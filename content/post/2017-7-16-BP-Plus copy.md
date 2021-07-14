---
comments: true
date: 2017-07-16T00:00:00Z
title: Measuring Match Dominance 
categories: ['Grand Slams', 'dominance',]
tags: ['Grand Slams', 'dominance',]
url: /2017/07/16/match-dominance/
thumbnail: "img/federer_wimbledon.png"
---

In a few hours, Roger Federer will face Marin Cilic on Wimbledon's Centre Court where he will play for his 19th Grand Slam and 8th Wimbledon title. 

<!--more-->

If Federer wins in straights, he will also have reached those records without dropping a set, following up Rafael Nadal's set-perfect win at the French Open. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/814475260" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/814475260?et=Alr1r6rPQC1rh7cGhHwHSA&tld=com.au&viewMoreLink=off&sig=51y3ELEwUfbcHS7JBiLbDBUgAJy_OoPu67jXYlxdmAI=&caption=true" width="594" height="396" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;" ></iframe></div><p style="margin:0;"></p></div>

The slam performances of Federer and Nadal this year have stirred up a lot of talk about _dominance_. But set wins are only one part of dominance. Federer, for example, has played five tiebreaks and had one opponent retire so far at Wimbledon. Nadal at the French Open also had one opponent retire but in his other matches he lost no more than 4 games in any single set. This would suggest that Nadal's performance has been the more dominant of the two.

Comparisons like these show us that tennis needs a better way of measuring _match dominance_. What are some options?

Aside from sets and games won, break points converted is a common stat that commentators will use to assess the superior match performance. This makes a lot of sense since break points are some of the [most important points](http://www.tandfonline.com/doi/abs/10.1080/02701367.2001.10608942) in a match and often critical to the match win. 

A related measure [introduced by Carl Bialik](https://fivethirtyeight.com/features/an-oddity-of-tennis-scoring-makes-its-annual-appearance-at-wimbledon/) is the _dominance ratio_. This ratio is equal to the percentage of return points won over the opponent's return points won. Unlike break point conversion, the percentage of return points won considers overall performance when receiving, which has a high positive correlation with break point conversion. 

I like both of these measures but when it comes to measuring dominance there are drawbacks with each. Break point conversion ignores performance in tiebreaks&mdash;another way sets are won in close contests&mdash; and would especially disadavantage big servers like John Isner and Ivo Karlovic. Also, when on the percentage scale, break point conversion conflates dominance with efficiency (a player can have the higher break point count but be very inefficient in getting there, consider Jelena Ostapenko's [Wimbledon match](http://www.wimbledon.com/en_GB/scores/stats/2221ms.html) vs Francoise Abanda). 

While break point conversion possibly ignores some important points, the dominance ratio includes all return points and doesn't consider the variable importance of points on return.

After some time thinking of how to combine the strengths of break point conversion and the dominance ratio, I've landed on _break point plus_ (BP+ for short). Break point plus measures the dominance of a player's performance by taking the total break points won and a weighted total of the minibreaks won in tiebreaks. This total is then subtracted by same total of the opponent. The weighted total of minibreaks accounts for the fact that minibreaks early in the tiebreak, before the players have gotten to a game-deciding stage, have approximately half the importance for winning the game as a regular game break point.

In a [previous research study](https://www.degruyter.com/view/j/jqas.2016.12.issue-1/jqas-2015-0057/jqas-2015-0057.xml), I showed that relative break points won was the most strongly associated with match wins (actually, the association closely parallels the Pythagorean expectation in baseball). But BP+ does even better. Using a dataset of men's Grand Slam matches from 2011 to the present, the association between BP+ and match wins reduced the residual deviance in a logistic model fit by 30% compared to a model with break points alone.


## Big 4 Slam Dominance

One of the ways we can use BP+ is for measuring the overall dominance of performances at an event. The chart below looks at the Big 4 for all of the slams played in 2017 (excluding the as-yet-to-be-played final at Wimbledon). 

When we look at the cumulative BP+ by round, the first thing that jumps out is the staggering performance of Rafael Nadal at this year's French Open. After the final, Nadal had a BP+ of 36, that is an average of 6 more breaks or decisive minibreaks than his opponent's per match (considering the retirement of Carreno Busta).

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1408.embed"></iframe>

Both Djokovic and Murray improved their performances at the French Open compared to the Australian Open, but each eventually faltered. At Wimbledon, Murray and Djokovic looked on track to improve on their French Open performances but both were stopped by injury.

Roger Federer, the favorite for the Wimbledon title, seemed to make the right choice in skipping the clay court season. He has attained a cumulative BP+ of 18.5, corresponding to an average of 3.7 BP+ per match. This is slightly less than his level at the Australian Open where he was at +4 per match going into the final against Nadal. 

## Big 4 Slam efficiency

I mentioned before that looking at point conversion out of opportunities is a way to measure efficiency. Focusing on the most critical points of the match, we can see how efficient the Big 4 have been in 2017 in their matches at the Majors.

From the chart below, you can see that players often are the most efficient in the first week where matches tend to have less pressure overall. This is somewhat less true at the French Open, the slowest surface among the slams.

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1410.embed"></iframe>

Federer has notoriously been called out for a lack of efficiency (remember the 4 for 23 break points won at the 2015 US Open). But this year he seems to have turned things around. Federer was on par with Nadal's efficiency at the Australian Open, and even exceeded Nadal in 5 of 7 rounds. His efficiency is somewhat down at Wimbledon compared to the Australian Open, reaching a low of 32% in his last match against Tomas Berdych. He had a 44% efficiency rate going in to the Australian Open versus Nadal, which could give some added confidence to Marin Cilic. 

BP+ is a new way of measuring player dominance and the rate of BP+ conversion gets directly at player efficiency on the most critical points. I really like this stat and think it gives a simple yet comprehensive measure of the impressiveness of a win. Sadly, this stat can't be derived from conventional aggregated match stats. It requires point-by-point data which, although readily available for most tour matches in the past five years or so, is harder to come by for older matches.

