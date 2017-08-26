library(viridis)
library(ggplot2)
library(ggthemes)

load("usopen_top10.RData")
load("atp_games.RData")

gg1 <- usopen_top10 %>%
	ggplot(aes(y = top10, x = year)) + 
	geom_hline(yintercept = 7, col = "darkgrey") + 
	geom_point(size = 2, col = viridis_pal()(1)) +
	geom_line(alpha = 0.5, col = viridis_pal()(1)) + 
	scale_y_continuous("Top 10 in US Open Main Draw", breaks = 0:10, lim = c(0, 10)) + 
	scale_x_continuous("Year", breaks = seq(1973, 2017, by = 2)) +
	theme_bw()
	
gg1

# Cumulative games by age
atp_games$age_group <- factor(atp_games$age_group)

game_summary <- atp_games %>%
	group_by(id, age_group) %>%
	dplyr::mutate(
		cum.games = cum.games
	) %>%
	complete(age_group, fill = list(cum.games = NA))

game_summary <- game_summary[order(game_summary$firstyear, game_summary$id, game_summary$age_group),]	
	
game_summary <- game_summary %>%
	group_by(id) %>%
	dplyr::mutate(
		cum.games = na.approx(cum.games, na.rm = F) 
	)

game_summary$cum.games[is.na(game_summary$cum.games)] <- 0

game_summary_stats <- game_summary %>%
	group_by(year_group, age_group) %>%
	dplyr::summarise(
		median = median(cum.games),
		lower = quantile(cum.games, .25),
		upper = quantile(cum.games, .75)
	)
	
game_summary_stats$age_group <- as.numeric(as.character(game_summary_stats$age_group))
	
gg2 <- game_summary_stats %>%
	filter(year_group <= 2000, year_group > 1970) %>%
	ggplot(aes(y = median / 1000, x = age_group, colour = factor(year_group), group = year_group)) + 
	geom_hline(yintercept = 10, col = "red") +
	geom_point(alpha = 0.3) + 
	geom_smooth(level = 0) + 
	geom_ribbon(aes(ymin = lower / 1000, ymax = upper / 1000, fill = factor(year_group)), alpha = 0.2, col = NA) +	
	scale_y_continuous("Cumulative Games (in 1,000s)", breaks = seq(0, 50, by = 2)) +  
	scale_x_continuous("Age", breaks = seq(15, 36, by = 2)) + 	
	scale_colour_manual("", values = viridis_pal()(10)) +
	scale_fill_manual("", values = viridis_pal()(10)) + 
	facet_wrap(~ year_group) + 
	theme_bw()	

gg2	
	
