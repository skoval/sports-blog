---
comments: true
date: 2015-11-07T00:00:00Z
title: Initial Thoughts on Developing WAR for Tennis
url: /2015/11/07/developing-war-for-tennis/
---

If, based on the title of this post, you were expecting some kind of jingoistic fantasy of tennis players armed with bazookas, you were mistaken. This post isn't about that kind of war (as much as _ESPN_ might be interested in such a gladiatorial venture); it's about the sabermetric kind of WAR.

<!--more-->


<img src="/assets/bazooka.jpg" style="float:right;" />

_WAR_, or _wins above replacement_, is a [statistic used in major league baseball](http://www.baseball-reference.com/blog/archives/6063) that attempts to measure an individual player's value. As its name suggests, _value_ here is measured by the estimated wins a player contributes to his team relative to a baseline that is defined by the skill of a typical player in the minor leagues, the so-called 'replacement player'. 

Although the mechanics of the calculation of WAR can be [quite complex](http://www.degruyter.com/view/j/jqas.2015.11.issue-2/jqas-2014-0098/jqas-2014-0098.xml), the complexity hasn't been a barrier to its popularity. In fact, in recent years, it has been the Drizzy of baseball statistics&mdash; stirring up controversy while gaining a greater hold on the conversation of player value. [Topps baseball](http://www.cbssports.com/mlb/eye-on-baseball/22903637/topps-will-feature-war-on-the-back-of-%20their-baseball-cards-soon) cards have even begun to feature WAR, making it the second of only two statistics  (the other being OPS) since 1981 to be added to the cards. Now fans have one more reason not to rely on [name recognition alone](http://i.imgur.com/2tyZcLl.gif) when judging a player's prospects.

One of the reasons _WAR_ has caught on is that it provides a solution to a basic conundrum in team sports: measuring how many wins an individual player earns for his or her team. Individual sports, like tennis, don't have this problem. Since tennis players are responsible for 100% of their wins, once could just count up wins to measure a player's value. Indeed, common record counts like Major titles won or total titles won are versions of this. Ranking points are another variant that represent a 52-week running tally of wins weighted by an _ad hoc_ measure of match importance. 

<img src="https://i.ytimg.com/vi/dpWmlRNfLck/hqdefault.jpg" style="float:left;padding:2%;" width="250px" height="250px" />

So, at this point, tennis would seem to know the answer to Edwin Starr's eternal question: `WAR: What is it good for?' But some recent thoughts have made me wonder we should leave it at that. Perhaps there might be some good for tennis that could come out of WAR. 

This line of thinking started after Novak Djokovic got many writers and fans thinking about best seasons, when, after winning the Shanghai Masters last month, the world number 1 called 2015 the [best season of his career](http://www.tennis.com/pro-game/2015/10/djokovic-wins-9th-title-of-year-at-shanghai-masters/56621/). Since it was only four years ago that Djokovic had another superhuman run of wins, his comment immediately set off debate about whether his achievements in 2015 are really better than those of 2011. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:297px;float:left;padding:2%;"><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/493198010?et=mS3bayi9Sa9Nq91tZg8jsA&viewMoreLink=on&sig=n3ujhwCZk1rCsEZVrJ5nLZkDBHXNFo6rP-dqbsCTwjM=" width="297" height="198" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/493198010" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div></div>

One could try to quantify the best by looking at win-loss record. But a major problem with win-loss as a measure of a player's strength is that it doesn't account for the strength of the opponents a competitor has faced. Even if Djokovic had an equal number of wins and losses in 2011 and 2015 (the actual record was 70-6 in 2011 and 77-5 to date in 2015), 2015 might be less impressive if, for example, more of those wins were against unseeded players compared to 2011. 

And this got me thinking about WAR. If each win in tennis isn't equally impressive, perhaps a WAR-like statistic could provide a way to standardize the impressiveness of wins and allow direct comparisons between wins against a different mix of opponents, effectively adjusting wins for opponent strength. 

How could this work? Using the same conceptual approach as WAR, one could compare a player's wins against some baseline. For the MLB, the baseline is defined by the replacement players. The closest equivalent in tennis would be qualifiers, the players who do not get a main entry into a tournament draw and the pool from which [lucky losers](https://en.wikipedia.org/wiki/Lucky_loser) would be drawn in the event of a withdrawal of a player in the main draw. In using the strength of the average qualifier as the baseline, the basic assumption would be that qualifier strength follows the trends of the field, that is, if one season has a particularly strong cohort of players this will be reflected in the performance of qualifiers. 

Once a definition of a replacement player is determined, the next step is determining the expected wins of the baseline player against the opponents of the matches in question. This could be done with your tennis prediction model of choice. My own preference would be one based on $BP^2$ [Pythagorean expectation](http://on-the-t.com/2015/09/26/Converting-Clutch-Into-Wins/), as it is a point-level measure of performance that is more stable than win-loss and avoids some of the pitfalls of models based on player ranking.

Curious what WAR has to say about Djokovic's best season? Next week I will try to bring the ideas in this post together to find out.

