library(ggplot2)
library(ggthemes)
library(ggrepel)
library(RColorBrewer)
library(dplyr)
library(scales)

load(file = "nadal_game_adj.Rdata")	
load(file = "outlier_game_adj.Rdata")	

nadal %>%
	ggplot(aes(y = diff, x = spread, fill = type))	 + 
	geom_bar(stat = "identity", position = "dodge") + 
	facet_grid(opponent ~ .) + 
	scale_fill_solarized(name = "") +
	scale_y_continuous("Scoreboard Effect", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Points Ahead", breaks = -3:3) + 
	geom_text(data = plot.data %>% filter(type == "Observed"), aes(label = GameScoreLabel, y = -10)) + 
	theme_bw() + 
	theme(text = element_text(size = 16), legend.position = "top")
	

pbp_serve %>%
	ggplot(aes(y = diff, x = spread, fill = serve))	 + 
	geom_bar(stat = "identity", position = "dodge") + 
	facet_grid(opponent ~ .) + 
	scale_fill_tableau(name = "") +
	scale_y_continuous("Scoreboard Effect", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Points Ahead", breaks = -3:3) + 
	geom_text(aes(label = GameScoreLabel, y = -25)) + 
	theme_bw() + 
	theme(text = element_text(size = 16), legend.position = "top")
		
	