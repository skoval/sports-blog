---
comments: true
date: 2016-07-23T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis - Myth 20
url: /2016/07/23/Klaassen-Magnus-Hypothesis-20/
---

As we near the end of our look back at the 22 tennis myths of Klaassen and Magnus, we find less novelty in the ideas. Rather than spend too much time covering old ground, I'll try to keep things interesting by looking at each topic in a new way.

<!--more-->

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/539859106" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:80%;"><iframe src="//embed.gettyimages.com/embed/539859106?et=PS__D9hbS9drCwXggRe-eg&viewMoreLink=off&sig=GhZrPDIBfGFb2oZMFUwA__60mdAc6bMeTkGV1waDULI=&caption=true" width="494" height="296" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

This week's topic returns to the question of the advantage of serving first in a match, which was first covered in [our discussion of myth 2](http://127.0.0.1:4000/2016/02/24/Klaassen-Magnus-Hypothesis2/) of [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#). Rather than considering the first game, myth 2 examined whether it is an advantage of serving first in _any_ set. One of the key points K&M made on that topic was how the examination of the effect of serving first is plagued by bias for any set _other_ than the first, as serving first in subsequent set is highly correlated with having lost the previous set. 

But what about the first set where the chance to serve first is determined only by luck? Do servers get a boost in their chances of winning the game by serving first?

## Myth 20: "The winner of the toss should elect to serve"


Thanks to the coin toss, serving first in a game is as close to a true randomized experiment as you get in tennis. Still, even chance can give curious results and it could still happen that the quality of players who serve first differ from those who serve second, especially with a small sample of matches. To account for this, K&M use the difference in player rankings to see if the player serving in the first game performs better than a player who serves second but is still of the same relative quality compared to his or her opponent.

Based on matches over several years at Wimbledon, K&M find that the percentage of points won on serve tends to be 3 percentage points higher in the first game compared to the other service game, for male and female players; a finding that would support the idea that serving first in the first set has an advantage. 

Back when we reviewed myth 2, I showed that if such a first game effect exists, it it likely explained by new balls. Though, new balls in the first game aren't truly new since they are the same set used in the warm up. This is why the first change of balls happens in the eighth game and all subsequent changes are after every 9 games. The ball age in the first game is really like an age of 2 (2 games played), which would be expected to give a minimal advantage. 

In fact, a deep dive into the effect of new balls in a [previous post on K&M myth's 18](http://127.0.0.1:4000/2016/07/08/Klaassen-Magnus-Hypothesis-18/) found that the effect diminishes with the point age (not just game age of the ball) and the disadvantage with age is player-dependent.

## Revisiting the Advantage of Serving First

Given that many of the effects we see in tennis vary by player, I thought it would be interesting to see if this is also true for first game effects. To do this, I took point-level data for 2014-2015 ATP and WTA matches and compared its server's serve performance in the first game against all the other service games in the same match. My logic in doing this is that the service games in a match should give a good estimate of their ability on serve on that day considering the opponent he or she was facing. 

Still, comparisons against the average (minus game 1) and the first game points won on serve is tricky because the first game is a small sample of points. The average points played in the first service game is just 6 and 7 for male and female servers. So how can we say whether $X$ points won on serve out of $n$ points was unusually high or not?

For this, I will use an exact binomial probability. Let $p$ be the probability that the server wins a point on serve. Then we will estimate the chance of winning $X$ or more points in the first game using the following:

$$
P(Points\;Won \geq X) = \sum_{j}^{n} \begin{pmatrix} n \\ j \end{pmatrix} p^j (1-p)^{(n - j)}
$$


I used the above formula to calculate the surprise of each first game performance for servers serving first and servers serving second. In each case, $p$ was the average points the player won on serve in all other service games of the same match.

The first figure shows the results for ATP servers. The y-axis is the player's $p$ for the match with first servers in the left panel and second servers in the right panel (You can hover over a point to see exactly which player was serving for each data point). Along the x-axis, I show the binomial probability of the points won in the first game being as many or greater as the points the player actually won. If electing to serve has an advantage, we would expect more low-probability first games.

Using a 5% probability as surprising, which is shown by the dark red horizontal line, there were 0 over-performing first servers and 0.4% over-performing second servers in their first service game. Using a 20% probability as surprising (shown in the lighter red line), we found 9% of over-performing first servers and 13% of second servers in the first game. Interestingly, Leonardo Mayer had 3 match performances in this small subset of over-performers. 

<div>
    <a href="https://plot.ly/~on-the-t/861/" target="_blank" title="Served First, Served Second, , , , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/861.png" alt="Served First, Served Second, , , , " style="max-width: 100%;width: 680px;"  width="680" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:861"  src="https://plot.ly/embed.js" async></script>
</div>

Above expected performance in the first game was more common among WTA players, though the frequency was still rare. There were 2% of first servers and 3% of second servers who had surprisingly strong (5% probability or less) outcomes in their first service game considering their performance in the remainder of the match. There were 11% and 14% of first and second servers who had a surprisingly good performance, using a 20% probability criterion. Several players had multiple matches in which they had better than expected performances in the first game, including Andrea Petkovic, Heather Watson, and Madison Keys.


<div>
    <a href="https://plot.ly/~on-the-t/864/" target="_blank" title="Served First, Served Second, , , , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/864.png" alt="Served First, Served Second, , , , " style="max-width: 100%;width: 680px;"  width="680" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:864"  src="https://plot.ly/embed.js" async></script>
</div>


## Summary

Even with the help of the randomization that comes with the coin toss, first game effects are still challenging to assess because of ball age and small sample size. Using the within-match binomial test is one way to identify how often first game performances are inconsistent with how a player performs in the remainder of the match, which is possibly the best way to account for their ability on a given day and the ability of their opponent. Using this approach, we find that about 15% of first game performances are consistent with match performance and there is no evidence that these better-than-expected performances are more likely for servers who serve first versus serving second.

The results do highlight the possibility that some players have an "early start effect", which would suggest a subset of players who should take advantage of serving right away when they win the toss. 

