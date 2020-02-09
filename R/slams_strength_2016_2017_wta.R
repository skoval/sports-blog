library(dplyr)
library(ggplot2)
library(ggthemes)
library(lubridate)
library(scales)

load("slams_2016_2017_wta.RData")

formatlabel <- function(x){
  ifelse(x > 0, paste("+", round(x, 0), sep = ""), round(x, 0))
}

group_assign <- function(n){
	drawsize <- ceiling(log(n, base = 2))
	group <- rep(c(drawsize + 1, drawsize:1), c(1, 2^(0:(drawsize - 1))))
group[1:n]
}

slams_2016 <- slams_2016[order(slams_2016$player_before_elo, decreasing = T),]

slams_2017 <- slams_2017[order(slams_2017$player_before_elo, decreasing = T),]

slams_2016 <- slams_2016 %>%
	group_by(tourney_name) %>%
	dplyr::mutate(
		group = group_assign(n())
	)
	
slams_2017 <- slams_2017 %>%
	group_by(tourney_name) %>%
	dplyr::mutate(
		group = group_assign(n())
	)	

### STRENGTH ###

# Take highest elo player in base-2 groups	
tourney_strength_2016 <- slams_2016 %>%
	group_by(tourney_name, group) %>%
	dplyr::summarise(
		elo = max(player_before_elo)
	)

tourney_strength_2017 <- slams_2017 %>%
	group_by(tourney_name, group) %>%
	dplyr::summarise(
		elo = max(player_before_elo)
	)	
	
tourney_strength_2016_summary <- tourney_strength_2016 %>%
	group_by(tourney_name) %>%
	dplyr::summarise(
		month = ifelse(tourney_name == "australian-open", 1, 
			ifelse(tourney_name == "us-open", 9, 
				ifelse(tourney_name == "french-open", 5, 7)))[1],
		strength = weighted.mean(elo, group)
	)
	
tourney_strength_2017_summary <- tourney_strength_2017 %>%
	group_by(tourney_name) %>%
	dplyr::summarise(
		month = ifelse(tourney_name == "australian-open", 1, 
			ifelse(tourney_name == "us-open", 9, 
				ifelse(tourney_name == "french-open", 5, 7)))[1],	
		strength = weighted.mean(elo, group)
	)	
	

	
format_tournament <- function(x){

	x <- gsub("-", " ", x)
	x <- strsplit(x, " ")
	x <- sapply(x, function(x){
		paste0(toupper(substr(x, 1, 1)), substr(x, 2, nchar(x)), collapse = " ")
	})
	
	x[x == "Us Open"] <- "US Open"

x
}

# Overall Strength
tourney_strength <- merge(tourney_strength_2016_summary, tourney_strength_2017_summary, by = c("tourney_name", "month"))

tourney_strength$tourney_name <- factor(tourney_strength$tourney_name, 
	levels = tourney_strength$tourney_name[order(tourney_strength$month)],
	labels =  format_tournament(tourney_strength$tourney_name[order(tourney_strength$month)]),
	order = T)

gg1 <- tourney_strength  %>%
	dplyr::mutate(
		change = strength.y - strength.x,
		direction = change < 0
	) %>%
	ggplot(aes(y = change, x = tourney_name, fill = direction))	 +
	geom_bar(stat = "identity", width = 0.5)	 +
	geom_text(aes(label = formatlabel(change)), nudge_y = 5, size = 6) + 
	geom_hline(yintercept = 0, col = "red") + 
	scale_fill_hc() + 
	scale_y_continuous("Change (2017 - 2016)", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_discrete("") +	
	theme_bw() + 
	theme(legend.position = "none", text = element_text(size = 16)) + 
	ggtitle("Grand Slam Draw Strength: 2017 vs 2016")

gg1 
	
# Round-by-round	
tourney_strength_2016$year <- 2016
tourney_strength_2017$year <- 2017

tourney_strength <- rbind(tourney_strength_2016, tourney_strength_2017)

tourney_strength$tourney_name <- format_tournament(tourney_strength$tourney_name)


gg2 <- tourney_strength %>%
	ggplot(aes(y = elo, x = group, color = factor(year), group = year))	 +
	geom_line() + 
	geom_point(size = 3)	 +
	facet_wrap(~ tourney_name) + 
	scale_colour_hc(name = "") + 
	scale_y_continuous("Tournament Strength", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Round Group", breaks = 1:8) + 
	theme_bw() +
	theme(legend.position = "bottom", text = element_text(size = 18)) 

gg2	