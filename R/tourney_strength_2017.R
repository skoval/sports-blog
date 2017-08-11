library(gigweb)
library(zoo)

options(warn = 1)

data("atp_calendar")
data("atp_draws")
data("atp_elo")

# Create weekly rankings
atp_elo <- atp_elo %>% filter(year(tourney_start_date) == 2017)

atp_elo_rankings <- atp_elo %>% 
	dplyr::mutate(
		week = week(tourney_start_date)
	)

atp_elo_rankings$player_name[atp_elo_rankings$player_name == "Albert Ramos Vinolas"] <- "Albert Ramos"

atp_elo_rankings$player_name[atp_elo_rankings$player_name == "Frances Tiafoe"] <- "Francis Tiafoe"

atp_elo_rankings$player_name[atp_elo_rankings$player_name == "Rogerio Dutra Da Silva"] <- "Rogerio Dutra Silva"

atp_elo_rankings$player_name[atp_elo_rankings$player_name == "Menendez Maceiras A."] <- "Adrian Menendez Maceiras"


atp_elo_rankings <- atp_elo_rankings %>%
	group_by(week, player_name) %>%
	dplyr::summarise(
		elo = player_before_elo[1]
	)
	
expand.elo <- expand.grid(player_name = unique(atp_elo_rankings$player_name), week = 1:32)

atp_elo_rankings <- merge(atp_elo_rankings, expand.elo, by = c("player_name", "week"), all.y = T)

atp_elo_rankings <- atp_elo_rankings[order(atp_elo_rankings$player_name, atp_elo_rankings$week),]

atp_elo_rankings <- atp_elo_rankings %>%
	group_by(player_name) %>%
	dplyr::mutate(
		elo = na.approx(elo, na.rm = F),
		first.elo = elo[!is.na(elo)][1]
	)

atp_elo_rankings <- atp_elo_rankings %>%
	group_by(player_name) %>%
	dplyr::mutate(
		elo = ifelse(is.na(elo), first.elo, elo)
	) %>%
	select(-first.elo)

today <- Sys.Date()

atp_calendar <- atp_calendar %>%
	dplyr::filter(week(start_date) <= week(today))

atp_draws <- rbind(atp_draws, bastad, kitzbuhel)

# Check for incorrect draws
drawsize <- atp_draws %>%
	group_by(tourney_name) %>%
	dplyr::summarise(
		n = n()
	)
	
tourney500 <- c("rotterdam", "rio-de-janeiro", "dubai", "acapulco", "barcelona", "london", "halle", "hamburg", "washington")

tourney1000 <-	c("indian-wells","miami","monte-carlo","madrid","rome","montreal")

slams <- c("australian-open", "wimbledon", "french-open")

atp_draws <- atp_draws %>%
	dplyr::mutate(
		level = ifelse(tourney_name %in% slams, "GS", 
			ifelse(tourney_name %in% tourney1000, "1000",
				ifelse(tourney_name %in% tourney500, "500", "250")))
	)
	
atp_calendar <- atp_calendar %>% 
	select(tourney_name = flashscore.url, start_date) %>%
	dplyr::mutate(
		week = week(start_date)
	)
	
atp_draws <- merge(atp_draws, atp_calendar, by = c("tourney_name"), all.x = T)	

atp_draws$player_name <- player_names(sub("-", " ", atp_draws$player), atp_elo_rankings$player_name)
	
atp_draws$player_name[atp_draws$player == "Bye"] <- "Bye"		

atp_draws$player_name[atp_draws$player_name == "Bautista Agut R."] <- "Roberto Bautista Agut"

atp_draws$player_name[atp_draws$player_name == "Carballes Baena R."] <- "Roberto Carballes Baena"

atp_draws$player_name[atp_draws$player_name == "Carreno Busta P."] <- "Pablo Carreno Busta"

atp_draws$player_name[atp_draws$player_name == "De Greef A."] <- "Arthur De Greef"

atp_draws$player_name[atp_draws$player_name == "De Minaur A."] <- "Alex De Minaur"

atp_draws$player_name[atp_draws$player_name == "De Schepper K."] <- "Kenny De Schepper"

atp_draws$player_name[atp_draws$player_name == "Del Potro J."] <- "Juan Martin Del Potro"

atp_draws$player_name[atp_draws$player_name == "Garcia Lopez G."] <- "Guillermo Garcia Lopez"

atp_draws$player_name[atp_draws$player_name == "Garcia Lopez G."] <- "Guillermo Garcia Lopez"

atp_draws$player_name[atp_draws$player_name == "Granollers Pujol M."] <- "Marcel Granollers"

atp_draws$player_name[atp_draws$player_name == "Haider Maurer A."] <- "Andreas Haider Maurer"

atp_draws$player_name[atp_draws$player_name == "Lu Y.H."] <- "Yen Hsun Lu"

atp_draws$player_name[atp_draws$player_name == "Lu Y.H."] <- "Yen Hsun Lu"

atp_draws$player_name[atp_draws$player_name == "O'Connell C."] <- "Christopher Oconnell"

atp_draws$player_name[atp_draws$player_name == "Silva Frederico F."] <- "Frederico Ferreira Silva"

atp_draws$player_name[atp_draws$player_name == "Silva Frederico F."] <- "Frederico Ferreira Silva"

atp_draws$player_name[atp_draws$player_name == "Souza J."] <- "Joao Sousa"

atp_draws$player_name[atp_draws$player_name == "Struff J L."] <- "Jan Lennard Struff"

atp_draws$player_name[atp_draws$player_name == "Tsonga J W."] <- "Jo Wilfried Tsonga"

atp_draws <- merge(atp_draws, atp_elo_rankings, by = c("player_name", "week"), all.x = T)

atp_draws$elo[is.na(atp_draws$elo)] <- 1500

atp_draws <- atp_draws %>%
	filter(player != "Bye") %>%
	select(-player, -match, -entry, -seed, -retired)
	
atp_draws <- atp_draws[order(atp_draws$tourney_name, atp_draws$elo, decreasing = T),]	

save(atp_draws, file = "~/Software/sports-blog/R/tourney_strength.RData")