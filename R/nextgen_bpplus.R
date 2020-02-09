library(dplyr)
library(ggplot2)
library(ggthemes)

load("nextgen_bp_plus.RData")

bp_plus$player <- factor(bp_plus$player, level = bp_plus$player[order(bp_plus$bp.plus.diff.mean)], order = T)	


gg1 <- bp_plus %>%
	ggplot(aes(y = bp.plus.diff.mean, ymin = bp.plus.diff.lower25, ymax = bp.plus.diff.upper25, x = player)) + 
	geom_hline(yintercept = 0, color = "red") + 
	geom_pointrange(size = 1.5, color = tableau_color_pal()(1)) + 
	theme_bw()	+
	scale_y_continuous("Differential") + 
	scale_x_discrete("") + 
	coord_flip() + 
	theme(text = element_text(size = 16)) + 
	ggtitle("BP Plus")

bp_plus$player <- factor(bp_plus$player, level = bp_plus$player[order(bp_plus$bp.plus.chance.mean)], order = T)	
		
gg2 <- bp_plus %>%
	ggplot(aes(y = bp.plus.chance.mean, ymin = bp.plus.chance.lower25, ymax = bp.plus.chance.upper25, x = player)) + 
	geom_hline(yintercept = 0, color = "red") + 
	geom_pointrange(size = 1.5, color = tableau_color_pal()(1)) + 
	theme_bw()	+
	scale_y_continuous("Differential") + 
	scale_x_discrete("") + 
	coord_flip() + 
	theme(text = element_text(size = 16)) + 
	ggtitle("BP Plus Opportunities")

gg2	

