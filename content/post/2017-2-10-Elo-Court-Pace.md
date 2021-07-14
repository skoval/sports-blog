---
comments: true
date: 2017-02-10T00:00:00Z
title: Elo Prediction Accuracy and Court Pace
url: /2017/02/10/elo-court-pace/
---

With only two of the top 8 seeds reaching the quarterfinals at the first Grand Slam of the year, the 2017 Australian Open was a trainwreck for most prediction models. Even the Elo forecasting system, one of the most accurate open prediction approaches in tennis, couldn't have anticipated the unusual conditions of this year's Major down under.

<!--more-->

_Or could it have?_

We know that one of the contributing factors for the higher number of upsets at the Australian Open was a higher than normal serve percentage. When we look at the average service points won by tournament, we see that there has been a general increasing trend across surfaces. On hard courts, for example, serve percentages have increased 3 percentage points over 20 years. Whether owing to a surface, ball or equipment effect, the 2017 Australian Open was still an outlier, [departing even further](http://www.economist.com/blogs/gametheory/2017/01/pace-play-tennis) from these trends.

<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1116.embed"></iframe>

_But why might a shift in serve advantage matter when it comes to prediction?_ 

There are a number of reasons to expect prediction performance to vary with the overall level of serve advantage at an event. When players are performing systematically better on serve, it can reflect conditions&mdash;like the speed of the court&mdash;as well as the prevailing style of play&mdash;shorter versus longer points&mdash;that could benefit specific players over others. Standard prediction methods ignore these factors which raises the question of whether they should. 

We can get some idea of the answer to that question by looking at how prediction error is or is not related to a player's overall ability on serve. 

The chart below plot's each player's yearly root mean squared error in Elo predictions against their service z-score for the year. The z-score measures how they compare to the average server on tour in that year in units of standard deviation, the most negative values being the poorest servers and the most positive values the best servers. 

Looking for all ATP matches from 1991 thru 2016, we find some clear structure in the error-serve relationship. The RMSE tends to be lowest for the worst servers but the most variable. For average and moderately above average servers the error rate increases but the variance becomes more narrow. Then, in the opposite extreme of the Karlovics of the sport, the error tends to decrease again.

<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1118.embed"></iframe>


What is this sigmoidal shape telling us? It seems to suggest that there is a cost in accuracy as players perform closer to the average on serve. The different colors indicate the service advantage of the event. Because there is considerable overlap in the colors, it further tells us that this relationship does not vary strongly from one event to the next, that is, when it comes to the error pattern, it matters most whether a serve is a weaker or stronger server and not exactly where he is playing. Although the event could determine how well a server performs at a particular point in the calendar.


To see if the error tends to be in one particular direction, we can look at the mean error. Below is the mean of the player's predicted win chance against the actual win, as before, grouped per player and year. A positive difference suggests that Elo tends to be more optimistic than not. We see that the error is more positive across the range of z-scores than negative, so it tends to attribute greater confidence in player's than they perform.

<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1120.embed"></iframe>

Interestingly, the direction of the error does appear to vary with the serve rating of the event. Whereas the average behavior we see in gray pertains to most events below a rating of 0.64 (that is, 64% serve percentage on average), the events above this level tend to have a negative correlation so the bias approaches zero for the best servers in the events with a higher overall service rating.


There is still a lot to unpack to understand the causes behind this error pattern. For now, at least, it does suggest that reducing error for the middle pack of servers could be an important strategy for improving forecasting performance in the sport.

