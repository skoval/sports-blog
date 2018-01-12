library(dplyr)
library(ggthemes)
library(ggplot2)
library(plotly)
library(ggrepel)
library(scales)

Sys.setenv("plotly_username" = "on-the-t")
Sys.setenv("plotly_api_key" = "rsmkz3l6jy")


setwd("~/Software/sports-blog/R")

results <- read.csv("qf_and_better_predictions.csv")

results <- results %>%
	filter(result %in% c("Of Reaching SF", "Winning")) 
	
results$result <- factor(results$result, levels = c("Of Reaching SF", "Winning"), labels = c("Surviving Quarter", "Winning Title"), order = T)
	
winners <- results$player[results$result == "Winning Title"]
winners <- winners[order(results$chance[results$result == "Winning Title"])]

results$player <- factor(results$player, levels = winners, order = T)

results %>%
	ggplot(aes(y = chance, x = player)) +
	geom_bar(stat = "identity", aes(fill =  factor(group)), position = position_dodge(width = 1)) + 
	facet_wrap(~ result) +
	geom_text(aes(label = round(chance, 1)), nudge_y = 5) +
	scale_fill_tableau('bluered12', name = "Quarter") + 
	coord_flip() + 
	theme_hc() +
	theme(text = element_text(size = 16)) + 
	scale_x_discrete("") + 
	scale_y_continuous("Percent Chance", breaks = scales::pretty_breaks(n = 8))



results <- read.csv("semifinalists_luck.csv")

names(results)[2] <- "chance"

results %>%
	ggplot(aes(y = scale(chance, scale = F) * 100, x = quarter)) +
	geom_bar(stat = "identity", aes(fill =  factor(quarter)), position = position_dodge(width = 1)) + 
	geom_text(aes(label = round(scale(chance, scale = F) * 100, 1)), nudge_y = 1) +
	scale_fill_tableau('bluered12', name = "Quarter") + 
	theme_hc() +
	theme(text = element_text(size = 16), legend.position = "none") + 
	scale_x_continuous("Quarter") + 
	scale_y_continuous("Luck of Draw", breaks = scales::pretty_breaks(n = 8), lim = c(-10, 10))


results <- read.csv("qf_and_better_predictions_women.csv")

results <- results %>%
	filter(result %in% c("Of Reaching SF", "Winning")) 
	
results$result <- factor(results$result, levels = c("Of Reaching SF", "Winning"), labels = c("Surviving Quarter", "Winning Title"), order = T)
	
winners <- results$player[results$result == "Winning Title"]
winners <- winners[order(results$chance[results$result == "Winning Title"])]

results$player <- factor(results$player, levels = winners, order = T)

gg2 <- results %>%
	ggplot(aes(y = chance, x = player)) +
	geom_bar(stat = "identity", aes(fill =  factor(group)), position = position_dodge(width = 1)) + 
	facet_wrap(~ result) +
	geom_text(aes(label = round(chance, 1)), nudge_y = 5) +
	scale_fill_tableau('bluered12', name = "Quarter") + 
	coord_flip() + 
	theme_hc() +
	theme(text = element_text(size = 16)) + 
	scale_x_discrete("") + 
	scale_y_continuous("Percent Chance", breaks = scales::pretty_breaks(n = 8))
	
gg1