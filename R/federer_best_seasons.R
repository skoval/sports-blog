library(dplyr)
library(tidyr)
library(lurbidate)
library(ggplot2)
library(ggthemes)
library(htmlTable)

	
load(file = "federer_matches_11232017.RData")
	
season_summary <- federer %>%
	group_by(year) %>%
	dplyr::summarise(
		titles = sum(win[round == "F"]),
		slam.titles = sum(win[round == "F" & tourney_level == "Grand Slams"]),
		win.percent = mean(win),
		win.over.loss = sum(win == 1),
		win.percent.slam = ifelse(any(tourney_level == "Grand Slams"), mean(win[tourney_level == "Grand Slams"]), 0),
		elo.score = sum(score),
		elo.score.slam = ifelse(any(tourney_level == "Grand Slams"), mean(score[tourney_level == "Grand Slams"]), 0)
	)	

tables <- season_summary %>% select(year, titles, slam.titles)
tables <- tables[order(tables$titles, decreasing = T),]
tables$Rank <- 1:nrow(tables)

htmlTable(tables[1:10, c("Rank", "year", "titles", "slam.titles")], 
          rnames = F, 
          col.rgroup = c("none", "#F7F7F7"),
          align = c("ll"),
          css.cell = "padding-left: 5%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;"
          )
          
# Based on win percent, 2005, 2006 and 2017; at slams 2004, 2006-7
plot.data <- season_summary %>%
	gather("type", "percent", win.percent, win.percent.slam)
	
plot.data$type <- ifelse(plot.data$type == "win.percent", "All ATP, Davis Cup, Olympics", "Grand Slams Only")
	
plot.data %>%	
	ggplot(aes(y = percent * 100, x = year, col = type)) + 
	theme_hc() +
	geom_text(data = plot.data %>% filter(type != "Grand Slams Only"), 
	aes(label = round(percent * 100, 0), col = type), nudge_y = -5, show.legend = FALSE) + 
	geom_point(size = 2) + geom_line(alpha = 0.5) + 
	scale_x_continuous("", breaks = seq(1998, 2017, by = 2)) +
	scale_y_continuous("Match Win Percentage", breaks = scales::pretty_breaks(n = 10)) +
	scale_colour_colorblind(name = "") +
	theme(legend.position = "bottom", text = element_text(size = 16)) + 
	ggtitle("Federer Season Ratings: Match Win Percentage")
	
season_summary %>%	
	ggplot(aes(y = elo.score, x = year)) + 
	theme_hc() +
	geom_text(aes(label = round(elo.score, 1)), nudge_y = -4) + 
	geom_point(size = 2, col = colorblind_pal()(2)[2]) + geom_line(alpha = 0.5, col = colorblind_pal()(2)[2]) + 
	scale_x_continuous("", breaks = seq(1998, 2017, by = 2)) +
	scale_y_continuous("Cumulative Match Score", breaks = scales::pretty_breaks(n = 10)) +
	scale_colour_colorblind(name = "") +
	theme(legend.position = "bottom", text = element_text(size = 16)) + 
	ggtitle("Federer Season Ratings: Results Adjusted for Difficulty")
