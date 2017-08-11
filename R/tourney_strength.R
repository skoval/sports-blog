library(dplyr)
library(ggplot2)
library(ggthemes)

load("tourney_strength.RData")

group_assign <- function(n){
	drawsize <- ceiling(log(n, base = 2))
	group <- rep(c(drawsize + 1, drawsize:1), c(1, 2^(0:(drawsize - 1))))
group[1:n]
}

atp_draws <- atp_draws %>%
	group_by(tourney_name) %>%
	dplyr::mutate(
		group = group_assign(n())
	)

### STRENGTH ###

# Take highest elo player in base-2 groups	
tourney_strength <- 	atp_draws %>%
	group_by(tourney_name, group) %>%
	dplyr::summarise(
		start_date = start_date[1],
		level = level[1],
		elo = max(elo)
	)
	
tourney_strength <- tourney_strength %>%
	group_by(tourney_name) %>%
	dplyr::summarise(
		start_date = start_date[1],
		level = level[1],	
		strength = weighted.mean(elo, group)
	)
	
tourney_strength$level <- factor(tourney_strength$level, level = c("GS", "1000", "500", "250"), order = T)	
	
gg1 <- tourney_strength %>%
	ggplot(aes(y = strength, x = start_date, color = level, group = level))	 +
	geom_point(size = 3)	 +
	geom_segment(aes(x = start_date, xend= start_date, y=1800, yend = strength)) + 
	facet_grid(level ~ .) +
	scale_colour_tableau() + 
	scale_y_continuous("Tournament Strength", lim = c(1800, 2300)) + 
	scale_x_date("Calendar Month", date_breaks = "1 month", date_labels = "%B") + 
	theme_bw() + 
	theme(legend.position = "none")

gg1 
	
### DEPTH ###
tourney_depth <- 	atp_draws %>%
	group_by(tourney_name, group) %>%
	dplyr::summarise(
		elo = max(elo)
	)
	
tourney_depth <- tourney_depth %>%
	group_by(tourney_name) %>%
	dplyr::summarise(
		depth = max(elo) - min(elo)
	)
	
tourney_strength <- merge(tourney_strength, tourney_depth, by = "tourney_name")

gg2 <- tourney_strength %>%
	ggplot(aes(y = strength, x = depth, color = level))	 +
	geom_point(size = 3)	 +
	geom_smooth(method = "lm", level = 0) + 
	scale_colour_tableau(name = "Level") + 
	scale_y_continuous("Tournament Strength") + 
	scale_x_continuous("Tournament Depth") + 
	theme_bw() 

gg2	