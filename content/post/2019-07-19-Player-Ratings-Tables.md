---
comments: true
date: 2019-07-19T00:00:00Z
title: Player Ratings Tables Go Live!
categories: ['singles', 'doubles','rating',]
tags:   ['singles', 'doubles','rating',]
url: /2019/07/19/Updating-Player-Ratings/
thumbnail: "/img/djokovic_celebrates.png"
---

A new section of the website is debuted: 'Ratings'. Here (the hope) is to provide the top 100 singles and doubles men and women on tour each week using MOV Elo ratings.


<!--more-->

If you are a regular reader of this site you will know that much of its analysis is based on player ratings, whether for monitoring player progress over time or forecasting match and tournament results. With ratings a bedrock for most quantitative analysis in tennis, I've been a bit obsessed with rating methods and determining how they can be improved. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:3%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/1162360748" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:70.20203% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/1162360748?et=Y3AJvJXsRkpXK3VPW61b7Q&tld=com.au&sig=5cbSPdIPfwnDVziwWLU_eFnxMAntYddylgEVdtH11Bk=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="417" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

Over time I've tested different approaches and developed new approaches, wherever it seemed better suited for tennis. That has lead me to my current system of choice: margin of victory (MOV) Elo ratings. Standard Elo only considers wins and losses. This means Elo wouldn't treat Djokovic's narrow win over Federer in the Wimbledon final as any different from Halep's commanding straight-set win over Serena Williams. The basic premise of MOV Elo is to say that ignoring these differences is ignoring important information about player ability. 

It turns out that there are many ways you could bring MOV into Elo, still keep the basic mechanics of the system. The version that seems to hold up best of those I've tested is one that combines win results and margin results in its estimation and updating steps, what I call the 'joint additive' MOV Elo model. 

Here is how it works. Say you have player with rating $R_i$ going up against a player rated $R_j$, then we estimate the margin of victory and overall win expectation as,

`$$
\hat{M}_{ij} = \frac{R_{i}-R_{j}}{\sigma_1},\;\mbox{ and } 
\hat{W}_{ij} = 1/(1 + 10^{-(R_{i} - R_{j})/\sigma_2}).
$$`

So we are assuming that the difference in margin is linearly related to the difference in ratings. The win expectation is otherwise identical to standard Elo. 

When the result of the match is known, ratings are updated by combining the residuals of the margin and win outcome,

`$$
R'_{i} = R_{i} + K_1 (M_{ij} - \hat{M}_{ij}) + K_2 (W_{ij} - \hat{W}_{ij})
$$`

In this way, a player gets credit for the dominance of the win as well as the win itself; or, from the other point of view, can lose rating points if the spread was much closer than expected. 

Whether MOV information adds any additional value to rating players is going to depend on the sport and MOV under consideration. In the case of tennis, most obvious choices of MOV improve on standard Elo, which is already a better predictive tool than official rankings. We can see this below by the log-loss results for 5 different MOV variables based on ATP results for 2016 to 2018. The horizontal line is the performance of standard Elo. We can see all MOV, expect for comparing sets won, improves log-loss performance. Sets won underperforms because it adds very little additional info than what the win result already tells us; this effectively results in double-counting and overly confident predictions.


<div>
<img src="/img/overall-logloss-2-1.png" width=80% />
</div>

Breaking down tier by tier shows that the performance gains are mostly in the 500 level and above. All methods still struggle to do well at the lowest-level of the tour. At Grand Slams, where there is the least room for improvement in general, we see that several MOV do quite well. The difference in games won, in particular, does well across tiers, which is a great result considering that this MOV can be easily obtained for matches played in the Open Era.



<div>
<img src="/img/tier-logloss-2-1.png" width=80% />
</div>


All of this is to say that I think MOV Elo ratings add value to rating player in tennis. And I wanted to share them with others. This is why I've added a new section to the site called ['Ratings'](http://on-the-t.com/ratings/main/). Here, I have links to singles and doubles ratings for the top 100 rated players in each week. 

From these we can see, for example, that the hardcourt-adjusted rating for men's singles shows only a few points separating the Big 3 as the tour heads into the US hardcourt swing. On the women's side, Barty has the edge but Halep and Serena Williams aren't far behind, while Osaka's struggles have dropped her to the 10th place.

Tables are searchable and sortable to help compare players or to track your player of interest. I'll do my best to keep them updated weekly and you can always look at the 'last updated' column to see the last match that went into each player's rating. Enjoy!




