library(ggplot2)
library(ggthemes)
library(dplyr)

tournament_prediction <- function (player, matchseq, elo, matchplayed, data, n.sim = 10) 
{
    obj <- data[, c(player, matchseq, elo, matchplayed)]
    names(obj) <- c("player", "match", "elo", "match_num")
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
            if (any(x$player == "Bye")) {
                index <- which(x$player != "Bye")
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
        result <- result %>% group_by(player) %>% dplyr::summarise(result = ifelse(n() == 
            rounds, n() + win[length(player)], n()), elo = max(elo))
        result
    }
    sims <- do.call("rbind", lapply(1:n.sim, single_sim))
    sims$result <- factor(sims$result)
    sims <- sims %>% group_by(player, result) %>% dplyr::summarise(percent = n()/n.sim) %>% 
        tidyr::complete(result, fill = list(percent = 0))
    result <- sims %>% tidyr::spread(result, percent)
    as.data.frame(result)
}

load("usopen_draws.RData")

# Match quarters
usopen_draws %>%
	group_by(year, quarter) %>%
	dplyr::summarise(
		elo = max(elo)
	)
	
# 2016 1 -> 2; 4 -> 1; 2 -> 3; 3 -> 4

# Match quarters and strongest with weakest
quarter1 <- usopen_draws %>%
	filter((year == 2017 & quarter == 1) | (year == 2016 & quarter == 4))
	
quarter2 <- usopen_draws %>%
	filter((year == 2017 & quarter == 2) | (year == 2016 & quarter == 1))

quarter3 <- usopen_draws %>%
	filter((year == 2017 & quarter == 3) | (year == 2016 & quarter == 2))

quarter4 <- usopen_draws %>%
	filter((year == 2017 & quarter == 4) | (year == 2016 & quarter == 3))

h2h_prediction <- function(quarter){
	
	# Simulate a 64-draw per quarter and matchup strongest to weakest
	quarter <- quarter[order(quarter$elo, decreasing = T),]
	
	match.order <- c(
		c(1, 32, 17, 16, 9, 24, 8, 25, 5, 21, 28, 12, 20, 13, 4, 29, 2, 
		31, 18, 15, 10, 23, 7, 26, 6, 22, 27, 30, 11, 19, 14, 3),
		c(1, 32, 17, 16, 9, 24, 8, 25, 5, 21, 28, 12, 20, 13, 4, 29, 2, 
		31, 18, 15, 10, 23, 7, 26, 6, 22, 27, 30, 11, 19, 14, 3)[32:1]
	)
	
	quarter$match <- match.order
	quarter <- quarter[order(quarter$match),]
	
	quarter$matchnum <- 100
	quarter$player <- paste(quarter$player_name, quarter$year)
	
	result <- tournament_prediction("player", "match", "elo", "matchnum", data = quarter, n = 10000)
	
	result <- result[order(result[,"7"], decreasing = T),]

result
}
      
predictions <-  lapply(list(quarter1, quarter2, quarter3, quarter4), h2h_prediction)
      
      
quarter.picks <- predictions[[4]][1:10,c("player","7")]
names(quarter.picks)[2] <- "win"

quarter.picks$year <- sub("(.*)(20..)", "\\2", quarter.picks$player)

quarter.picks$player <- factor(quarter.picks$player, levels = quarter.picks$player[10:1], order = T)      

# Plot top 10 prospects for title
quarter.picks %>%
	ggplot(aes(y = win * 100, x = player, fill = factor(year))) + 
	geom_bar(stat = "identity", width = 0.7) + 
	coord_flip() + 
	scale_x_discrete("") + 
	geom_text(aes(label = round(win * 100, 0), color = factor(year)), nudge_y = 5, size = 6) + 
	scale_y_continuous("Title Win Percentage", lim = c(0, 100)) + 
	scale_colour_tableau(name = "") + 
	scale_fill_tableau(name = "") + 
	theme_bw() + 
	theme(legend.position = "none", text = element_text(size = 16)) +
	ggtitle("Cilic's Quarter vs Wawrinka's 2016 Quarter")
	
ggsave(file = "~/Software/sports-blog/public/img/usopen_quarter4.png")

