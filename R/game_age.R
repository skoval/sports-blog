library(scales)
library(ggplot2)
library(ggthemes)
library(dplyr)
library(deuce)
library(lubridate)
library(survival)
library(ggrepel)

load(file = "game_age.RData")


# Make Andy Murray the Comparison for each generation from 1970 to 2000
game_age <- game_age %>%
	filter(generation <= 2000) 
	
murray <- game_age %>% filter(player == "Andy Murray")

murray <- do.call("rbind", lapply(unique(game_age$generation), function(x){
	murray$generation <- x
murray
}))

game_age <- rbind(game_age %>% filter(player != "Andy Murray"), murray)

game_age$colour <- game_age$player == "Andy Murray"

game_age <- game_age %>% filter(age >= 18 & age <= 30)

labels <- game_age %>%
	group_by(player, generation) %>%
	dplyr::summarise(
		colour = colour[1],
		index = sample(100:n(), 1),
		cumulative.games = cumulative.games[index],
		age = age[index]
	)



game_age %>%
	filter(generation != 2000) %>%
	ggplot(aes(y = cumulative.games, x = age)) +
	facet_wrap(~generation) + 
	geom_point(aes(col = colour), alpha = 0.05) + 	
	geom_vline(xintercept = 26) + 
	scale_colour_tableau(name = "") + 
	geom_text_repel(data = labels %>% filter(generation != 2000), aes(label = player, col = colour), size = 2.5) +
  	theme_hc(base_size = 12) + theme(legend.position = "none")  +	
	scale_y_continuous("Game Age", breaks = seq(0, 25, by = 5) * 1000) + 
	scale_x_continuous("Player's Age", breaks = scales::pretty_breaks(n = 6)) 
	
game_age %>%
	filter(generation == 2000) %>%
	ggplot(aes(y = cumulative.games, x = age)) +
	facet_wrap(~generation) + 
	geom_point(aes(col = colour), alpha = 0.1) + 	
	geom_vline(xintercept = 26) + 
	scale_colour_tableau(name = "") + 
	geom_text_repel(data = labels %>% filter(generation == 2000), aes(label = player, col = colour), size = 3) +
  	theme_hc(base_size = 12) + theme(legend.position = "none")  +	
	scale_y_continuous("Game Age", breaks = seq(0, 25, by = 5) * 1000) + 
	scale_x_continuous("Player's Age", breaks = scales::pretty_breaks(n = 6)) 
		
