library(dplyr)
library(gigweb)
library(ggthemes)
library(ggplot2)
library(plotly)
library(ggrepel)
library(MASS)

load(file = "usopen_excitement.RData")
	
interesting_matches <- c(
	"2XjoQ9Jo",
	"llgcN734",
	"WdCpp74U",
	"ldRDfIT0"
)
	
	
excitement$interesting <- excitement$matchid %in% interesting_matches

plot <- excitement %>%
	ggplot(aes(y = excitement^0.4, x = importance * 100, col = interesting)) +
	geom_point() +
	theme_classic() +
	geom_text_repel(data  = excitement %>% filter(interesting), 
		aes(label = paste(player1, player2)), force = 1, nudge_y = -1, nudge_x = -1) + 
	scale_y_continuous("(Cumulative Prob Change)^0.4", breaks = scales::pretty_breaks(n = 10)) + 
	scale_x_continuous("Excitement Index", breaks = scales::pretty_breaks(n = 10))  	
plot
  	
lm.fit <- lm(excitement ~  importance, data = excitement)

fit <- boxcox(lm.fit)

fit$x[which.max(fit$y)] # Optimal transform

	