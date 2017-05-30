---
comments: true
date: 2016-02-14T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis&mdash; Myth 1
url: /2016/02/14/Klaassen-Magnus-Hypothesis-1/
---

Books on tennis statistics are as rare as black swans. So I take notice whenever one appears. 

One of the most recent of these scarce creatures is Franc Klaassen and Jan Magnus's [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#). Despite having primary appointments in economic departments, Klaassen and Magnus have produced some of the most scholarly mathematical papers on tennis.  _Analyzing Wimbledon_ is a compilation of the findings that have come out of their long partnership, synthesized into a list of 22 myths of tennis. The text is written in a much lighter style than an academic paper (though still quite technical at its core) and is a must-read for any inquisitive tennis fan.

<img src="/assets/analyze_wimbledon.jpg" style="float:right;padding:2%;" width="200" height="300" />

As the title suggests, _Analyzing Wimbledon_ only uses data from the most prestigious of Grand Slams and mostly from the early nineties. I am guessing that this was largely out of convenience, though I suppose Klaassen and Magnus might also just be diehard grass courters (they could have Richard Krajicek, fellow Dutchman, to thank for that). Whatever the reason, one wonders how the findings with the 90s Wimbledon data would apply to the current baseline era that is played primarily on hard and clay courts. 

So I am taking on the project to revisit each of the 22 myths of Klaassen and Magnus on this blog. I'll devote one (or more) posts to each and, where public data allows, try to see if the Wimbledon findings hold up for the current game. On to Myth 1...


## Myth 1: "Winning a point on serve is an iid process"

The first myth is probably one of the most challenging that Klaassen and Magnus tackle, but one that makes sense to go first as it effects many of the others to come. The "iid" is a bit of insider stat lingo, which means _independent and identically distributed_. When applied to winning a point on serve, to say that the outcome of the point is "iid" is effectively saying that every serve is like a coin toss with some player- and match-specific probability. Why a coin toss? Because, the assumption is that the outcome of one point doesn't influence another and the probability of a win or loss is always the same. 

If Myth 1 is true, it would mean that players pretty much play every point the same. So there would be no momentum effects (violation of independence) or caving under pressure (violation of constant win probability). In other words, to play iid a player would have to exhibit a kind of extreme imperturbability that even Bjorn Borg would have found hard to achieve. 

Most tennis fans would suspect that Myth 1 is wrong. There are 3 ways it could be wrong: points could be dependent, points could be distributed differently, or both. So, what did Klaassen and Magnus conclude and how? To test the independence of points, the Dutch duo looked at whether winning the previous point influenced the chance of winning the next. Using a regression model with the Wimbledon 90s data, they found that the previous point win was associated with an increased probability that the server won the next point. That's strike one against the iid model.

To test the constant distribution of points, Klaassen and Magnus did a similar test of association, but this time with big points (using Carl Morris' measure of point importance). Once again, they found players were influence by big points, playing less effectively on big points, where there is more pressure. This result means we can conclude that iid play has not likely been true for past play. Strike two!

> Still, are the deviations from iid big enough to matter?

Klaassen and Magnus didn't think so because, when they have assumed that players play to iid in the past (whether for men or women), the iid model has given a good approximation of the frequency of winning a point on serve.

This seems surprising, given how often the mental game in tennis is discussed. If iid is pretty close to the truth, it would suggest that the mental game isn't as big a factor in the outcomes of matches. Could Klaassen and Magnus's conclusion be right? And does it apply to today's game?

## Revisiting Myth 1 for today's game

Taking down Myth 1 isn't hard. With a large enough sample of points and large enough number of conditions (e.g. tiebreaks, 30-30 points, first points in a game, etc.), any one can find some condition in a match where the probability of winning on serve has a statistically significant change. It's the practical significance that is the bigger and more interesting question. The _practical_ significance is what tells us whether any difference found is one that is important enough that it might suggest a different outcome for the game, set, or match than would be the case if one just naively assumed iid. 

As a simple look at the two sides of Myth 1 (independence on the one hand and identical distribution on the other), we can consider 1) how today's players are influenced by the outcome of the previous point and 2) how players handle the pressure of big points. 


The first figure shows the influence that the outcome of the previous point had on players at the 2015 Grand Slams based on 150,000 points played. We see that for both the ATP and WTA players, there is suggestion of a small boost in momentum with winning the previous point: a mini hot hand, in effect. For both tours, this boost is roughly a difference a 1 percentage point, so the chance of winning the point on serve after having won the last point is 1 percentage point higher than if the last point were lost. Points in the current game do not appear to be independent.

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/776.embed"></iframe>

In the next test, we consider big points, using break points to define situations with more pressure. Figure 2 shows that players appear to be less effective on break points than other points. The observed difference was 2.5 percentage points for the ATP players and 1 percentage point for WTA players. This suggests that points in the current game are also not identically distributed.

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/778.embed"></iframe>

The question of the _importance_ of these differences still remains. Is a change of 1-2 percentage points in the ability to win on serve a big deal? On any one point, perhaps not, but when we think of the many points that make up a match, the cumulative deviations could be. If we are ultimately concerned about differences that will influence who wins and losses, we can get some grounding by looking at the differential in performance on serve between the winners and losers of Grand Slam matches. Figure 3 shows this comparison and indicates that the separation between winners and losers has been 10 percentage points on average for both tours. This puts the iid deviations considered here (not exhaustive by any means) at about 20% of the magnitude of the difference determining the winner and loser of a match: not a massive difference, but not one to ignore either.

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/780.embed"></iframe>
	
This is a simple lookback at Myth 1 of Klaassen and Magnus's book. I haven't considered other dynamic effects or how changes in shot difficulty could also explain some of the variation in serve performance observed. At least from this initial look, it seems that the deviations from iid might be more important today than 20 years ago but the iid remains a reasonable model for tennis.

