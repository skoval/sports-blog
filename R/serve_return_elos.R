library(ggplot2)
library(ggthemes)
library(dplyr)
library(RColorBrewer)

load(file = "atp_elos_2017.RData")


tour_final_players <- c(
	"Roger Federer",
	"Rafael Nadal",
	"Marin Cilic",
	"Dominic Thiem",
	"Alexander Zverev",
	"David Goffin",
	"Jack Sock",
	"Grigor Dimitrov",
	"Pablo Carreno Busta"
)

elos <- elos %>%
	dplyr::mutate(
		level = ifelse(grepl("^Men's|^Gentle", tny_name), "Grand Slam",
			ifelse(grepl("IndianWells|Miami|Monte-Carlo|Madrid|Rome|Montreal|Cinci", tny_name), "Masters", "Other"))
	)

serve_elos <- elos %>%
	filter(serve %in% tour_final_players)
	
serve_elos <- serve_elos[order(serve_elos$match_date, serve_elos$matchid, serve_elos$Set, serve_elos$Game, serve_elos$Point),]

# Points played during 2017
serve_elos <- serve_elos %>%
	group_by(serve)	 %>%
	dplyr::mutate(
		PointNumber = 1:n()
	)
	
	
gg1 <- serve_elos %>%
	ggplot(aes(y = server.elo, x = PointNumber, col = level)) + 
	geom_point(alpha = 0.5) + 
	theme_gdocs() +
	geom_hline(yintercept = median(serve_elos$server.elo)) + 
	scale_colour_manual(name = "", values = c(tableau_color_pal()(2), "lightgrey")) + 
	facet_wrap(~serve) + 
	theme(legend.position = "bottom", legend.direction = "horizontal", axis.text.x = element_text(angle = 90)) + 
	scale_y_continuous("Serve Elo Rating", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Points Played", breaks = scales::pretty_breaks(n = 6)) 
	
gg1 

return_elos <- elos %>%
	filter(return %in% tour_final_players)
	
return_elos <- return_elos[order(return_elos$match_date, return_elos$matchid, return_elos$Set, return_elos$Game, return_elos$Point),]

# Points played during 2017
return_elos <- return_elos %>%
	group_by(return)	 %>%
	dplyr::mutate(
		PointNumber = 1:n()
	)
	
	
gg2 <- return_elos %>%
	ggplot(aes(y = return.elo, x = PointNumber, col = level)) + 
	geom_point(alpha = 0.5) + 
	theme_gdocs() +
	geom_hline(yintercept = median(return_elos$return.elo)) + 
	scale_colour_manual(name = "", values = c(tableau_color_pal()(2), "lightgrey")) + 
	facet_wrap(~return) + 
	theme(legend.position = "bottom", legend.direction = "horizontal", axis.text.x = element_text(angle = 90)) + 
	scale_y_continuous("Return Elo Rating", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Points Played", breaks = scales::pretty_breaks(n = 6)) 
	
gg2


serve_peak_elo <- serve_elos %>%
	group_by(serve) %>%
	dplyr::summarise(
		serve.peak.elo = max(server.elo)
	)
	
return_peak_elo <- return_elos %>%
	group_by(return) %>%
	dplyr::summarise(
		return.peak.elo = max(return.elo)
	)	
	
serve_peak_elo <- rename(serve_peak_elo, player = serve)
return_peak_elo <- rename(return_peak_elo, player = return)

peak_elos <- merge(serve_peak_elo, return_peak_elo, by = "player")


gg3 <- peak_elos %>%
	ggplot(aes(y = serve.peak.elo, x = return.peak.elo)) + 
	geom_point() + 
	theme_gdocs() +
	geom_text(aes(label = player))
	
gg3


biggest_changes <- return_elos %>%
	dplyr::group_by(return, tny_name) %>%
	dplyr::summarise(
		change = max(return.elo) - min(return.elo)
	)
	
biggest_changes[order(biggest_changes$change, decreasing = T),][1:5,]
