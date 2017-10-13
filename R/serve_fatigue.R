library(drc)
library(dplyr)
library(ggplot2)
library(ggthemes)
library(scales)

load("raonic_matches.RData")

serves <- serves %>%	
	filter(ServeNumber != 0) %>%
	dplyr::mutate(
		ServeNumber = ifelse(ServeNumber == 1, "First Serve", "Second Serve")
	)
	
	
median_speeds <- serves %>%
	group_by(ServeNumber) %>%
	dplyr::summarise(
		label = round(median(Speed_KMH), 0),
		ServeCount = max(ServeCount) - 15,
		Speed_KMH = 230
	)
	

serves %>%
	ggplot(aes(y = Speed_KMH, x = ServeCount, col = ServeNumber))	+
	facet_grid(. ~ ServeNumber) + 
	geom_smooth(level = 0, col = "grey") + 
	geom_point(size = 2) + 
	scale_colour_tableau() + 
	geom_text(data = median_speeds, aes(label = paste("Median", label)), size =  4, show.legend = FALSE) +
	theme_bw() +
	scale_y_continuous("Speed (KPH)", breaks = scales::pretty_breaks(n = 10)) +
	scale_x_continuous("Serve Count", breaks = scales::pretty_breaks(n = 10)) +  
	theme(legend.position = "bottom", text = element_text(size = 16)) +
	ggtitle("Milos Raonic Service Speeds (R4 Aus Open 2017)")
		


fit <- drm(Speed_KMH ~ ServeCount, 
           data = subset(serves, ServeNumber == "Second Serve"),
           fct = LL.4())

mselect(fit, list(LL.3(), LL.5(), W2.4(), baro5()))


plot(fit, type = "bars", xlab = "Serve Count", ylab = "Speed (KPH)", main = "Raonic Second Serve Fatigue Model", log = "", ylim = c(120, 240), axes = FALSE)

axis(1, at = seq(2, 140, by = 20))
axis(2, at =  seq(120, 240, by = 20))

plot(fit, type = "obs", add = TRUE, col = tableau_color_pal()(1), pch = 19)

ed <- ED(fit, c(5, 10, 15))

plot.data <- data.frame(
	ED = c(5, 10, 15),
	ServeCount = as.numeric(ed)[1:3]
)


plot.data %>%
	ggplot(aes(y = ServeCount, x = ED)) +
	geom_bar(stat = "identity", fill = tableau_color_pal()(2)[2]) +
	scale_x_continuous("% of Speed Lost", breaks = c(5, 10, 15)) + 
	scale_y_continuous("Serve Count", breaks = scales::pretty_breaks(n = 10)) + 
	theme_bw() + theme(text = element_text(size = 16)) +
	ggtitle("Effective Fatigue") 

