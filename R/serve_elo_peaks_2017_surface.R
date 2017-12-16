library(ggplot2)
library(ggthemes)
library(dplyr)
library(htmlTable)

load(file = "atp_elos_surface_2017.RData")

plot <- function(elos, threshold = 10){
	
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
	
	players <- unique(serve_elos$serve[serve_elos$Matches >= threshold])
	
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
	scale_y_continuous("Peak Serve Elo", lim = c(1450, 1700), breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Peak Return Elo", lim = c(1350, 1600), breaks = scales::pretty_breaks(n = 10)) + 
	geom_hline(yintercept = median(peak_elos$serve.peak.elo)) + 
	geom_vline(xintercept = median(peak_elos$return.peak.elo)) +
	geom_text(aes(label = player))
	
gg1
}

clay_peaks <- plot(clay_elos, 5)
hard_peaks <- plot(hard_elos)
grass_peaks <- plot(grass_elos, 3)

combine <- function(elos, surface, threshold = 10){
	
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
	
	players <- unique(serve_elos$serve[serve_elos$Matches >= threshold])
	
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

	peak_elos$surface <- surface

peak_elos
}

elos <- do.call("rbind", 
	list(combine(hard_elos, surface = "Hard"),
	combine(clay_elos, surface = "Clay", 5),
	combine(grass_elos, surface = "Grass", 3))
)

elos <- elos %>%
	group_by(surface) %>%
	dplyr::mutate(
		serve.top10 = sort(serve.peak.elo, decreasing = T)[10],
		return.top10 = sort(return.peak.elo, decreasing = T)[10]
	)
	

variance <- elos %>%
	group_by(player) %>%
	dplyr::summarise(
		serve.diff = max(serve.peak.elo) - median(serve.peak.elo),
		serve.top = sum(serve.peak.elo >= serve.top10),
		return.diff = max(return.peak.elo) - median(return.peak.elo),
		return.top = sum(return.peak.elo >= return.top10)
	)
	
serve <- elos %>%
	filter(player %in% c("Marin Cilic", "Grigor Dimitrov", "Gilles Muller"))	 %>%
	select(player, surface, serve.peak.elo)

serve <- serve %>%
	group_by(player) %>%
	dplyr::mutate(
		serve.peak.elo = round(serve.peak.elo, 2),
		diff.from.best = round(serve.peak.elo - max(serve.peak.elo), 2)
	)
	
serve <- serve[order(serve$player, serve$serve.peak.elo, decreasing = T),]	
	
htmlTable(serve, 
          rnames = F, 
          col.rgroup = c("none", "#F7F7F7"),
          align = c("ll"),
          css.cell = "padding-left: 5%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;"
          )	
          
          
return <- elos %>%
	filter(player %in% c("Dominic Thiem", "David Ferrer", "Mischa Zverev"))	 %>%
	select(player, surface, return.peak.elo)

return <- return %>%
	group_by(player) %>%
	dplyr::mutate(
		return.peak.elo = round(return.peak.elo, 2),
		diff.from.best = round(return.peak.elo - max(return.peak.elo), 2)
	)
	
return <- return[order(return$player, return$return.peak.elo, decreasing = T),]	
	
htmlTable(return, 
          rnames = F, 
          col.rgroup = c("none", "#F7F7F7"),
          align = c("ll"),
          css.cell = "padding-left: 5%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;"
          )	          