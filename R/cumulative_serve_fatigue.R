library(drc)
library(dplyr)
library(ggplot2)
library(ggthemes)
library(scales)
library(deuce) # Install from github.com/skoval

data(gs_point_by_point)

player <- "Madison Keys"

gs_point_by_point <- gs_point_by_point %>%
	filter(year == 2017, slam == "usopen", player1 == player | player2 == player)


gs_point_by_point <- gs_point_by_point %>%
	dplyr::mutate(
		round = as.numeric(substr(match_id, 14, 14)),
		serving = (player == player1 & PointServer == 1) | (player == player2 & PointServer == 2) 
	)
	
gs_point_by_point <- gs_point_by_point[order(gs_point_by_point$round, gs_point_by_point$SetNo, gs_point_by_point$GameNo, gs_point_by_point$PointNumber),]

gs_point_by_point <- gs_point_by_point %>%
	filter(serving) %>%
	group_by(round) %>%
	dplyr::mutate(
		ServeCount = cumsum(ServeNumber)
	) %>%
	filter(Speed_KMH != 0)
	
## Fatigue Estimates
fatigue_predict <- function(data, serve, the_round){
	
	data <- subset(data, ServeNumber == serve & round == the_round)
	
	fit <- drm(log(Speed_KMH) ~ ServeCount, 
           data = data,
           fct = W1.4())
    
	data.frame(
		round = paste("Round", data$round[1]),
		ServeCount = rep(data$ServeCount, 2),
		ServeNumber = ifelse(serve == 1, "First Serve", "Second Serve"),
		Speed = c(data$Speed_KMH, exp(predict(fit))),
		Type = rep(c("Actual","Predicted"), each = nrow(data))
	)
}	

params <- expand.grid(round = unique(gs_point_by_point$round), serve = 1:2)

plot.data <- do.call("rbind",
	mapply(fatigue_predict,
		the_round = params$round,
		serve = params$serve,
		MoreArgs = list(data = gs_point_by_point),
		SIMPLIFY = FALSE
	)
)


plot.data %>%
	ggplot(aes(y = Speed, x = ServeCount, col = factor(Type))) + 
	geom_point() +
	scale_colour_tableau(name = "") + 
	facet_grid(ServeNumber ~ round, scale = "free_x") + 
	theme_bw() + 
	scale_y_continuous("Service Speed (KPH)", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("In-Match Serve Count", breaks = scales::pretty_breaks(n = 10)) +
	theme(legend.position = "bottom") +
	ggtitle(sub("Player", player, "Player US Open 2017"))



data(gs_point_by_point)


player <- "Dominic Thiem"


gs_point_by_point <- gs_point_by_point %>%
	filter(year == 2017, slam == "usopen", player1 == player | player2 == player)


gs_point_by_point <- gs_point_by_point %>%
	dplyr::mutate(
		round = as.numeric(substr(match_id, 14, 14)),
		serving = (player == player1 & PointServer == 1) | (player == player2 & PointServer == 2) 
	)
	
gs_point_by_point <- gs_point_by_point[order(gs_point_by_point$round, gs_point_by_point$SetNo, gs_point_by_point$GameNo, gs_point_by_point$PointNumber),]

gs_point_by_point <- gs_point_by_point %>%
	filter(serving) %>%
	group_by(round) %>%
	dplyr::mutate(
		ServeCount = cumsum(ServeNumber)
	) %>%
	filter(Speed_KMH != 0)
	
## Fatigue Estimates
fatigue_predict <- function(data, serve, the_round){
	
	data <- subset(data, ServeNumber == serve & round == the_round)
	
	fit <- drm(log(Speed_KMH) ~ ServeCount, 
           data = data,
           fct = LL.4())
    
	data.frame(
		round = paste("Round", data$round[1]),
		ServeCount = rep(data$ServeCount, 2),
		ServeNumber = ifelse(serve == 1, "First Serve", "Second Serve"),
		Speed = c(data$Speed_KMH, exp(predict(fit))),
		Type = rep(c("Actual","Predicted"), each = nrow(data))
	)
}	

params <- expand.grid(round = unique(gs_point_by_point$round), serve = 1:2)

plot.data <- do.call("rbind",
	mapply(fatigue_predict,
		the_round = params$round,
		serve = params$serve,
		MoreArgs = list(data = gs_point_by_point),
		SIMPLIFY = FALSE
	)
)


plot.data %>%
	ggplot(aes(y = Speed, x = ServeCount, col = factor(Type))) + 
	geom_point() +
	scale_colour_tableau(name = "") + 
	facet_grid(ServeNumber ~ round, scale = "free_x") + 
	theme_bw() + 
	scale_y_continuous("Service Speed (KPH)", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("In-Match Serve Count", breaks = scales::pretty_breaks(n = 10)) +
	theme(legend.position = "bottom") +
	ggtitle(sub("Player", player, "Player US Open 2017"))
	