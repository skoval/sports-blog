library(ggplot2)
library(ggthemes)
library(dplyr)

load(file = "wta_elos_all_2017.RData")

elos <- elos[order(elos$match_date, elos$matchid, elos$Set, elos$Game, elos$Point),]

serve_elos <- elos %>%
	group_by(serve)	 %>%
	dplyr::mutate(
		Matches = n_distinct(matchid),
		PointNumber = 1:n()
	)

return_elos <- elos %>%
	group_by(return)	 %>%
	dplyr::mutate(
		Matches = n_distinct(matchid),
		PointNumber = 1:n()
	)

players <- unique(serve_elos$serve[serve_elos$Matches >= 10])

serve_peak_elo <- serve_elos %>%
	filter(serve %in% players) %>%
	group_by(serve) %>%
	dplyr::summarise(
		serve.peak.elo = max(server.elo)
	)
	
return_peak_elo <- return_elos %>%
	filter(serve %in% players) %>%
	group_by(return) %>%
	dplyr::summarise(	
		return.peak.elo = max(return.elo)
	)	
	
serve_peak_elo <- rename(serve_peak_elo, player = serve)
return_peak_elo <- rename(return_peak_elo, player = return)


peak_elos <- merge(serve_peak_elo, return_peak_elo, by = "player")


gg1 <- peak_elos %>%
	ggplot(aes(y = serve.peak.elo, x = return.peak.elo)) + 
	geom_point() + 
	theme_gdocs() +
	#scale_y_continuous("Peak Serve Elo", lim = c(1450, 1700), breaks = scales::pretty_breaks(n = 10)) + 
	#scale_x_continuous("Peak Return Elo", lim = c(1400, 1600), breaks = scales::pretty_breaks(n = 10)) + 
	geom_hline(yintercept = median(peak_elos$serve.peak.elo)) + 
	geom_vline(xintercept = median(peak_elos$return.peak.elo)) +
	geom_text(aes(label = player))
	
gg1


# Most improved
serve_improve <- elos %>%
	filter(serve %in% players) %>%
	group_by(serve)	 %>%
	dplyr::summarise(
		start = server.elo[1],
		improved = median(server.elo[month(match_date) > 6]) - start,
		matches = n_distinct(matchid[month(match_date) > 6])
	) %>%
	filter(matches >= 15)

# Top 30
serve_improve <- serve_improve[order(serve_improve$improved, decreasing = T),][1:30,]

serve_improve$serve <- factor(serve_improve$serve, level = serve_improve$serve[nrow(serve_improve):1], order = T)

serve_improve %>%
	ggplot(aes(y = improved, x = serve)) + 
	geom_bar(stat = "identity", fill = colorblind_pal()(2)[2]) + 
	geom_text(aes(label = round(start, 0)), nudge_y = 5) + 
	coord_flip() + 
	theme_hc() + 
	scale_y_continuous("Serve Rating Improvement", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_discrete("") + 
	theme(text = element_text(size = 14)) + 
	ggtitle("Most Improved Servers in 2017")
	

return_improve <- elos %>%
	filter(return %in% players) %>%
	group_by(return)	 %>%
	dplyr::summarise(
		start = return.elo[1],
		improved = median(return.elo[month(match_date) > 6]) - start,
		matches = n_distinct(matchid[month(match_date) > 6])
	) %>%
	filter(matches >= 15)
	
return_improve <- return_improve[order(return_improve$improved, decreasing = T),][1:30,]
return_improve <- return_improve %>% filter(improved > 0)

return_improve$return <- factor(return_improve$return, level = return_improve$return[nrow(return_improve):1], order = T)

return_improve %>%
	ggplot(aes(y = improved, x = return)) + 
	geom_bar(stat = "identity", fill = colorblind_pal()(3)[3]) + 
	geom_text(aes(label = round(start, 0)), nudge_y = 5) + 
	coord_flip() + 
	theme_hc() + 
	scale_y_continuous("Return Rating Improvement", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_discrete("") + 
	theme(text = element_text(size = 14)) + 
	ggtitle("Most Improved Returners in 2017")	