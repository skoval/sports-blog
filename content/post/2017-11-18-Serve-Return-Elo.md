---
comments: true
date: 2017-11-18T00:00:00Z
title: Serve and Return Elo Ratings 
categories: ['elo', 'ratings',]
tags: ['elo', 'ratings',]
url: /2017/11/18/Elo-Serve-Return/
thumbnail: "/img/atp_tour_finals.png"
---


The Elo rating system is one of the most popular tools for rating player and team performance. In this post, I show how we can take the Elo system beyond match wins and use it to rate players on the two most fundamental skills in the sport: serving and returning. 

<!--more-->


Ways of rating tennis players are numerous. You can find most of these ways in [GOAT debates](https://www.nytimes.com/2017/11/11/sports/tennis/greatest-mens-tennis-player-indoors.html), where some will prefer Grand Slam titles, others win percentage, others consecutive weeks at number 1, and so on. The stat savvy tend to prefer Elo ratings, a system that, although still fairly new in tennis is one of the most [popular rating systems](https://en.wikipedia.org/wiki/Elo_rating_system) in sport.


<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/872376754" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.66667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/872376754?et=_6Xg-P0mSmJKoOPIZFDPGA&tld=com&sig=EyKOek-WyM_21uuBtoEUV-git7m-70HiG3x_bErx9Tk=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="396" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

Elo ratings have gotten [a lot of attention](http://on-the-t.com/2017/09/16/slam-strength-decline/) on this blog for multiple reasons. When it comes to judging player ability, tennis Elo ratings are known to outperform official rankings. Also, Elo ratings and other paired comparison systems share the distinct strength of accounting for opponent difficulty when judging the impressiveness of results.

I could go on about the virtues of Elo ratings but in this post I actually want to talk about one of it's shortcomings. Actually, it isn't so much a shortcoming of the system but more a shortcoming in how it has usually been implemented. 

## Tennis Elo Ratings

When you see tennis Elo ratings on places like this blog, the [Tennis Abstract](http://tennisabstract.com/reports/atp_elo_ratings.html), or [FiveThirtyEight](https://fivethirtyeight.com/tag/elo-ratings/) the rating you will see is based on match wins and losses. In other words, how much your rating is adjusted up or down depends only on 1) your opponent and 2) whether you won or lost.

Yet we know that the skills that go into those wins can look very different from one player to the next. Just consider the contrast between current 24th ranked Milos Raonic and 26th ranked Diego Schwartzman. Despite being of comparable rank, the skill sets of these two could be more different. Raonic's talents are strongest on his serve while Schwartzman shines most brightly on the return. 

Imbalance in serve and return skills isn't unusual in the sport. But without rating these skills separately, it is hard to really understand how well a player is performing on each of these crucial dimensions and how those skills might be changing over time. 

**Which leads us to the obvious conclusion: the sport needs serve and return Elo ratings.**

There are many ways one could go about developing Elo ratings for serve and return. In what follows, I am going to describe an approach that seems like a reasonable starting point to me.

The basic idea is to use each point played as information about the serve ability of the server and the return ability of the receiver. Let's suppose our player of interest, indexed by `$i$`, has just completed their `$n$`th point on serve. To update their serve Elo rating, `$Serve_{i,n}$`, the following update rule is used:


`$
Serve_{i,n} = Serve_{i,n-1} + K * (S_{n} - \hat{S}_{n})
$`

where `$Serve_{i,n-1}$` is their Elo rating at the start of the point, `$K$` is a constant learning rate, `$S_{n}$` indicates if the server won, and `\hat{S}_{n}` is the expected chance the server had of winning. This last expectation is determined by the difference in the receiver's rating and the server's rating at the start of the point. 

For the return Elo, the same idea applies only we focus on the win outcome and expectation with respect to the returner.

`$
Return_{i,n} = Return_{i,n-1} + K * (\hat{S}_{n} - S_{n}) 
$`

When choosing `$K$` it is typical to search over a range of values to find the level that does the best at predicting the outcome of interest, in this case point outcomes. I've found that `$K = 2$` performs well. With this value of `$K$`, a player can gain (or lose) at most 2 points on the outcome of any single point.

The last decision is what initial values to use for the ratings when a player's first point is observed. Although 1500 is typical, it wouldn't make sense to rate a player's serve and return equally, since we know that most players are better when serving. Instead, I start players with a serve rating of 1500 and return rating of 1400, which implies an average serve win expectation of 64%.

# Illustration: ATP Tour Finalists

Since it is the week of the ATP Tour Finals, what better way to illustrate the serve and return Elo ratings than with the 9 finalists?

## Serve Elo Ratings

The chart below show the serve Elo ratings for each finalist during the 2017 season thru the US Open. The first point is the player's first tour-level point played in 2017 and the last point is their last played at the final Grand Slam of the year. To highlight different periods of the season, I've used separate colors for points played at Majors, Masters, and other tournaments. As a helpful reference, the horizontal line shows the average serve Elo ratings in 2017 among these 9 players. 

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1478.embed"></iframe>

The overall level of the trajectories tell us who is stronger on serve. So we see for example that Rafael Nadal and Roger Federer have spent the most time above the average line, while Carreno Busta has only recently reached the average serve level of the group.

The ups and downs in the trajectories show us when players soared or struggled with their serve. Zverev is a particularly interesting case. He was climbing fairly steadily on serve throughout the year but started to hit a bad patch that started at the Cincinnati Masters. Dominic Thiem, on the other hand, had his best period of the calendar on serve, perhaps unsurprisingly, during the clay court season.

The US Open was a turbulent ride for a number of these top players. Four of the 5 biggest swings in serve ability over the course of the 2017 season happened at the US Open for Nadal, Federer, Goffin, and Cilic, who all had swings of 57 rating points or more. 

## Return Elo Ratings

When we look at the corresponding trajectories for return ability, we see some interesting things. Of the group, Roger Federer's ability has been one of the most stable throughout the year, while Carreno Busta was one of the more improved players on return by the end of the US Open.

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1480.embed"></iframe>

Rafael Nadal and Dominic Thiem once again have clear clay surface effects, indicated by their peaks at the middle of the charts. However, while Thiem sharply dropped after the French Open, Nadal was able to get close to his French Open return level by the end of the US Open. 

## Peak Elo Ratings

It is also interesting to look at peak ratings during a season. The 'peak' or maximum achieved gives us an idea of the limits of a player's potential. The chart below shows the 2017 peak serve Elo ratings against the return Elo ratings. Players high on the top had high serve potential in 2017, while players far to the right had high return potential.

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1482.embed"></iframe>

Of the ATP Tour finalists, the player who has achieved the highest serve Elo during the 2017 season is Roger Federer (1635) with Rafael Nadal a close second at 1626. Rafael Nadal takes the top spot on peak return rating (1547), while Dominic Thiem had the second highest peak return (1525) of the group.

This introduction to a serve and return Elo system shows that, as more point-level data of tennis matches enters the public domain, we can start to create more detailed player ratings. Such ratings can help us understand not only who is most likely to win but why.


The data and code for this post can be found [here](https://github.com/skoval/sports-blog/tree/master/R).

