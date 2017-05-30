---
comments: true
date: 2016-04-04T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis&mdash; Myth 5
url: /2016/04/04/Klaassen-Magnus-Hypothesis-5/
---

The 5th myth in Klaassen and Magnus's examination of some of the most common beliefs in tennis puts _point importance_ at center stage once again. With myth 5, K&M ask if there is any truth to the idea that _all points in tennis are equally important_. 

Of all of the 22 beliefs that K&M consider in [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#) this is the one that probably has the least traction in the tennis community. It's hard to imagine that even the most casual tennis fan would argue, for example, that the first point in a match at 0-0 is as important as the point at 6-4 in a tiebreak. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:445px;float:left;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/506839458" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/506839458?et=09TYYA4QQexf1zBxJMPKkQ&viewMoreLink=on&sig=cTG2VUPPElC-9L370543i-ejoX6IctyCqU1Py_OaZ00=&caption=true" width="445" height="297" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

The idea of "equal point importance" might at first seem like the dullest of straw men. Yet things get more interesting if we don't simply accept that all points in tennis _are not_ of equal importance and ask _why_ they aren't?



## Myth 5: "All points in tennis are equally important"


Although there is general acceptance that some points in tennis are more important than others, misconceptions about point importance are still common. Rather than argue against equal point importance, which has already been addressed in [another post](http://on-the-t.com/2016/03/05/Klaassen-Magnus-Hypothesis-3/), I am going to take the topic of myth 5 as an opportunity to address two other misunderstandings of point importance. 

The first of these is the idea that all break points in a game are equally important. The argument in favor of this idea goes something like "any break point is a point that could lose the server the game, so they are all equally important to the server." The first part of this statement is true but the second part doesn't consider what happens if the server saves the point. If a point is only as important as it helps a player to win the game, we have to consider what position a server is in when a break point is saved and whether saving puts the server in a greater winning position in some situations over others.

Consider, for instance, saving at 30-40 compared to 0-40. At 30-40, a server who saves goes into a deuce situation and there are a number of paths that could lead to winning the game. But at 0-40, escaping the first break point still leaves the server with two consecutive break points to save before getting to deuce&mdash;a much trickier proposition.

| Break Point Situation | Importance Relative to 0-0 Point |
|:----:|:----:|
|30-40|2.6|
|40-Ad|2.6|
|15-40|1.6|
|0-40|0.9|

This description already suggests that 0-40 is the worst break point situation a server can find him or herself in because of the difficulty of winning 3 consecutive points to even have a chance of winning the game. Consequently, the influence that this single point has for winning the game has little value. In fact, as we see from the table above, the importance of the 0-40 break point is slightly less than the first point of the game at 0-0. 

You can derive these relationships from the conditional probability of winning a game, $P(a, b)$, given the score for the server is $a$ and the score for the receiver is $b$. This probability can be found with the recursive formula 

$$
P(a, b) = p * P(a + 1, b) + (1 - p) * P(a, b + 1),\; if a, b \neq 3\; (i.e.\; deuce) 
$$

or, 

$$
P(a, b)  = \frac{p^2}{(p^2 + (1-p)^2)},\; if a, b = 3 
$$

In this formula, $p$ is the chance a server wins a point, which is (for simplicity) assumed to be constant throughout the game, and $P(a, b)$ equals 1 if the server wins by two clear points and 0 if the returner wins by two clear points. Game wins on advantage points are equivalent to 30-40 and 40-30 points for the receiver's advantage and server's advantage, respectively. 

A mathematical definition of the importance of the $a-b$ point, like $15-0$ (1-0 using a numeric score), is to consider the difference in the probability the server wins the game if the point is won versus lost, which is 

$$
Importance(a, b) = P(a + 1, b) - P(a, b + 1).
$$ 

---

A second misconception is that a point (e.g. 15-15 in the third game of the first set) is equally important to all players. In actuality, the importance of each point will depend on a player's win percentage on serve in a given match. The importance of a point will differ for players who are not equally effective on serve. 

To get some intuition about how this would affect the importance of break points for a stronger and weaker server, we first note that $P(a, b + 1)$ on a break point is always results in a chance of 0 that the server wins the game. Thus, the difference in importance is entirely driven by how much more likely it is that the server wins the game when the break point is saved compared to zero. 

Since it is easier for a strong server to win consecutive points, this suggests that we would expect break points to be more important for big servers than weaker servers. Below we contrast the point importance, $Importance(a, b)$, for break points for a server with a 60% probability of winning a point on serve (less than the ATP top 100 average of 64%) and a big server with probability of 75%.

| Break Point Importance | Serving with 60% Win Probability| Serving with 75% Win Probability|
|:----:|:----:|:----:|
|30-40|70%| 90%|
|40-Ad|70%| 90%|
|15-40|42%| 68%|
|0-40|25%| 51%|

As expected, break points are much more consequential for the big server because this server has a better chance of coming back. Even when down Love-40, a server who wins 75% of points on serve on average will still have a 50-50 chance of pulling out a game win. 

Considering the upcoming [Miami Masters men's final](http://miamiopen.com), how different can we expect break point importance to be for Novak Djokovic and Kei Nishikori in their respective service games? World No. 1 Novak Djokovic has won 70% of service points in 2016, whereas Kei Nishikori has won 67%. However, these averages could look quite different when they face each other, as both are going to be stronger opponents than the average opponent they play. If we look at what went down at the Australian Open quarterfinals, when they last met, Djokovic served with a 65% win percentage and Nishikori won only 51% of points on serve. 

| Break Point Importance | Djokovic | Nishikori|
|:----:|:----:|:----:|
|30-40|77%| 52%|
|40-Ad|77%| 52%|
|15-40|50%| 27%|
|0-40|32%| 14%|

If both players play to their level at the AO QF, break points will have twice the importance on Djokovic's serve compared to Nishikori's. For Nishikori, when facing the return power of Djokovic, his best bet might just be to treat every point as though they were equally important.

