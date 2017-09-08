library(ggplot2)
library(ggthemes)
library(dplyr)

tournament_prediction <- function(player, matchseq, elo, matchplayed, data, n.sim = 10) 
{
    obj <- data[, c(player, matchseq, elo, matchplayed)]
    names(obj) <- c("player_name", "match", "elo", "match_num")
    sim_bracket_with_elo <- function(obj) {
        obj_split <- split(obj, f = obj$match)
        do.call("rbind", lapply(obj_split, function(x) {
            rating_diff <- x$elo[2] - x$elo[1]
            prediction1 <- 1/(1 + 10^(rating_diff/400))
            prediction2 <- 1 - prediction1
            x$prediction <- c(prediction1, prediction2)
            k <- 250/((x$match_num + 5)^0.4)
            win <- rbinom(n = 1, size = 1, prediction1)
            x$win <- c(win, 1 - win)
            x$elo <- x$elo + 1.1 * k * (x$win - x$prediction)
            x$match_num <- x$match_num + 1
            x
        }))
    }
    sim_bracket_with_elo_bye <- function(obj) {
        obj_split <- split(obj, f = obj$match)
        do.call("rbind", lapply(obj_split, function(x) {
            if (any(x$player_name == "Bye")) {
                index <- which(x$player_name != "Bye")
                x <- x[index, , drop = F]
                x$prediction <- 1
                x$win <- 1
                x
            }
            else {
                rating_diff <- x$elo[2] - x$elo[1]
                prediction1 <- 1/(1 + 10^(rating_diff/400))
                prediction2 <- 1 - prediction1
                x$prediction <- c(prediction1, prediction2)
                k <- 250/((x$match_num + 5)^0.4)
                win <- rbinom(n = 1, size = 1, prediction1)
                x$win <- c(win, 1 - win)
                x$elo <- x$elo + 1.1 * k * (x$win - x$prediction)
                x$match_num <- x$match_num + 1
                x
            }
        }))
    }
    next_round <- function(obj) {
        winners <- obj[obj$win == 1, ]
        winners$match <- rep(1:(nrow(winners)/2), each = 2)
        winners
    }
    single_sim <- function(void) {
        result <- list(sim_bracket_with_elo_bye(obj))
        while (nrow(result[[length(result)]]) > 2) {
            obj <- next_round(result[[length(result)]])
            result <- c(result, list(sim_bracket_with_elo_bye(obj)))
        }
        rounds <- length(result)
        result <- do.call("rbind", result)
       
        result <- result %>% group_by(player_name) %>% dplyr::summarise(result = ifelse(n() == 
            rounds, n() + win[length(player_name)], n()), elo = max(elo))
        result
    }
    
    sims <- do.call("rbind", lapply(1:n.sim, function(x){
    		result <- single_sim()
    		result <- subset(result, result >= 6) # SF or better
    		result$sim <- x
    	result
    	}))
    
	sims <- merge(sims, data[,c("player_name", "usa")], by = "player_name", all.x = T)

sims
}

load("usopen_womens_draw.RData")

# Set constant matchnum for all players
usopen$matchnum <- 200

semifinals <- tournament_prediction("player_name","match", "elo","matchnum", data = usopen, n = 100000)

# All USA?
usa <- semifinals %>%
	group_by(sim) %>%
	dplyr::summarise(
		all.usa = all(usa == 1)
	)

table(usa$all.usa)


semifinalists <- c("Coco Vandeweghe", "Madison Keys", "Sloane Stephens", "Venus Williams")

which_usa <- semifinals %>%
	group_by(sim) %>%
	dplyr::summarise(
		all.usa = all(player_name %in% semifinalists)
	)
	
table(which_usa$all.usa)
