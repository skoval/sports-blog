---
comments: true
date: 2016-08-06T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis - Myth 22
url: /2016/08/06/Klaassen-Magnus-Hypothesis-22/
---

<img src="/assets/jsm2016logo4.png" style = "float:left; padding:2%;" />

While most of the sports world has had been focused on the start of the summer Olympics this week, a small group of diehard sports statisticians were attending the Joint Statistical Meetings in Chicago and catching up with recent advances in sports analytics. During my time there, I was fortunate to participate in a panel entitled "Harnessing the Extraordinary Power of Statistics in Sports". The panel was organized by Michael Lopez, of Skidmore College and twitter fame [@StatsByLopez](https://statsbylopez.com), and chaired by [Michael Schuckers](https://www.stlawu.edu/people/michael-schuckers) at St. Lawrence University. The other participants on the panel were [Brian Macdonald](https://twitter.com/bmacnhl?lang=fr), a statistician for the NHL's Florida Panthers; [Dennis Lock](http://www.lockanalytics.com), who crunches number for the NFL's Miami Dolphins; and [Dan Cervone](http://dcervone.com), a current member of the [XY Research](http://www.xyresearch.com) group who will be starting a position as a data scientist with the MLB's LA Dodgers later this year.


<figure>
    <img src="/assets/jsm2016panel.jpg" width = "400" style ="float:right;padding:2%;" />
    <figcaption style="color:green;"><b>Caption:</b> From left to right, Michael Schuckers, Brian Macdonald, Me, Dan Cervone, Dennis Lock</figcaption>
</figure>


As the only panelist from an individual sport, one of the questions I was asked to tackle was what makes doing statistical analysis for individual sports unique from team sports. My answer was that, on the one hand, analysis of performance in individual sports is easier because, as fewer players are involved, determining a player's contribution to the outcomes of a game is less complex. On the other hand, individual sports like tennis, golf, or diving, typically involve more in-between-play when the athlete is preparing for the next activity and left to his or her own thoughts. In fact, 80% of a tennis match is in-between time (which might you question why you paid so much for those last grand slam tickets!). 

What does the in-between-time of individual sports have to do with stats? I think the simple answer to that is: we don't know. How much a player's thoughts, mental routines, and general mentality on the court influence their performance are all open questions. The distinct mental styles of players like Ivan Lendl and Fabio Fognini suggest that the inner game exists and matters, but sports analytics has only started to make progress towards evaluating the mental side of the game.

It turns out that this topic is a fitting segue for the final of Klaassen and Magnus's 22 myths of tennis. In the last of their myths, K&M take on the question of whether missed breaks create a discouragement effect that makes it harder for servers to hold the game following missed break point opportunities. If players systematically under-perform after a missed break opportunity, it would be one way we could conclude that the inner game affects player performance. 


# Myth 22 "After missing breakpoint(s) there is an increased probability of being broken in the next game"

Like most of the analyses we have seen in our march through the myths of [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#), K&M prefer to test their theories with the baseline model: a model of point outcomes on serve that includes both the difference and sum of the server and returner's rankings as controls for player quality. 

To test the _discouragement theory_ implied by myth 22, they extend the baseline model to include an indicator for a missed chance in the previous game. The "missed chance" is defined as a previous game in which the current server had break point chances but failed to convert any of them. When they apply this model to a sample of matches from Wimbledon, they find no evidence of a discouragement effect for men but they do find a significant effect for women, with WTA players having an average decrease in their chance of winning a point on serve of 4% after a missed break. 


## Revisiting Myth 22

In addition to expanding the tournaments represented in the analysis, I was interested in what a matched analysis would conclude. Since missed break chances might be more common for some types of players than others, it could induce an imbalance in player quality when comparing service games after a missed break to all other service games. Worrying that a regression model with player rankings might not adequately account for such a selection bias, I wanted to look at the missed break question using a matching approach.

The data set I started with is shown below. All the counts are service games that come from many thousands of matches over the past 5 years for both the men's and women's tours. The first two columns of the ATP and WTA tables are the break point distributions before service games that the server lost, while the final two columns is the distribution for the return game prior to a service hold. We can see that that break point chances are more common for players who tend to hold service, indicating the effect of player quality. Also, we see that there is more than a 10% chance that 2 or more breaks occur. 


<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;'>
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Break Point Chances</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>ATP Misses</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>%</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>ATP Breaks</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>%</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>WTA Misses</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>%</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>WTA Breaks</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>%</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>15407</td>
<td style='text-align: center;'>72</td>
<td style='text-align: center;'>56973</td>
<td style='text-align: center;'>69</td>
<td style='text-align: center;'>7207</td>
<td style='text-align: center;'>57</td>
<td style='text-align: center;'>12240</td>
<td style='text-align: center;'>53</td>
</tr>
<tr style='background-color: #f7f7f7;'>
<td style='background-color: #f7f7f7; text-align: center;'>1</td>
<td style='background-color: #f7f7f7; text-align: center;'>3396</td>
<td style='background-color: #f7f7f7; text-align: center;'>16</td>
<td style='background-color: #f7f7f7; text-align: center;'>14233</td>
<td style='background-color: #f7f7f7; text-align: center;'>17</td>
<td style='background-color: #f7f7f7; text-align: center;'>2995</td>
<td style='background-color: #f7f7f7; text-align: center;'>24</td>
<td style='background-color: #f7f7f7; text-align: center;'>6308</td>
<td style='background-color: #f7f7f7; text-align: center;'>27</td>
</tr>
<tr>
<td style='text-align: center;'>2</td>
<td style='text-align: center;'>1719</td>
<td style='text-align: center;'>8</td>
<td style='text-align: center;'>7134</td>
<td style='text-align: center;'>9</td>
<td style='text-align: center;'>1557</td>
<td style='text-align: center;'>12</td>
<td style='text-align: center;'>2993</td>
<td style='text-align: center;'>13</td>
</tr>
<tr style='background-color: #f7f7f7;'>
<td style='background-color: #f7f7f7; text-align: center;'>3</td>
<td style='background-color: #f7f7f7; text-align: center;'>707</td>
<td style='background-color: #f7f7f7; text-align: center;'>3</td>
<td style='background-color: #f7f7f7; text-align: center;'>2923</td>
<td style='background-color: #f7f7f7; text-align: center;'>4</td>
<td style='background-color: #f7f7f7; text-align: center;'>568</td>
<td style='background-color: #f7f7f7; text-align: center;'>5</td>
<td style='background-color: #f7f7f7; text-align: center;'>1158</td>
<td style='background-color: #f7f7f7; text-align: center;'>5</td>
</tr>
<tr>
<td style='text-align: center;'>4</td>
<td style='text-align: center;'>204</td>
<td style='text-align: center;'>1</td>
<td style='text-align: center;'>910</td>
<td style='text-align: center;'>1</td>
<td style='text-align: center;'>198</td>
<td style='text-align: center;'>2</td>
<td style='text-align: center;'>340</td>
<td style='text-align: center;'>1</td>
</tr>
<tr style='background-color: #f7f7f7;'>
<td style='background-color: #f7f7f7; text-align: center;'>5</td>
<td style='background-color: #f7f7f7; text-align: center;'>56</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>274</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>65</td>
<td style='background-color: #f7f7f7; text-align: center;'>1</td>
<td style='background-color: #f7f7f7; text-align: center;'>120</td>
<td style='background-color: #f7f7f7; text-align: center;'>1</td>
</tr>
<tr>
<td style='text-align: center;'>6</td>
<td style='text-align: center;'>19</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>81</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>19</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>31</td>
<td style='text-align: center;'>0</td>
</tr>
<tr style='background-color: #f7f7f7;'>
<td style='background-color: #f7f7f7; text-align: center;'>7</td>
<td style='background-color: #f7f7f7; text-align: center;'>6</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>31</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>3</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>11</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
</tr>
<tr>
<td style='text-align: center;'>8</td>
<td style='text-align: center;'>2</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>12</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>1</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>2</td>
<td style='text-align: center;'>0</td>
</tr>
<tr style='background-color: #f7f7f7;'>
<td style='background-color: #f7f7f7; text-align: center;'>9</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>5</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>2</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
</tr>
<tr>
<td style='text-align: center;'>10</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
<td style='text-align: center;'>0</td>
</tr>
<tr style='background-color: #f7f7f7;'>
<td style='background-color: #f7f7f7; text-align: center;'>11</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
<td style='background-color: #f7f7f7; text-align: center;'>1</td>
<td style='background-color: #f7f7f7; text-align: center;'>0</td>
</tr>
<tr>
<td style='border-bottom: 2px solid grey; text-align: center;'>12</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>2</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>0</td>
</tr>
</tbody>
</table>


For the matching approach to testing myth 22, I first found all the games where a player had break point chances but did not end up converting (the "treatment" cases) and then found a matching return game for the same returner and match in which the player never had a break point opportunity (the "control" cases). Thus, every missed break got a comparable return game from the same match to serve as its control group.

Because of the range in break point chances shown above, I was curious whether there might be a dose effect for discouragement. In other words, if players get discouraged does it increase with the number of break point chances, such that a player who had 5 chances to break and never did is even more unlikely to hold serve than if he had missed just one chance? To look at this question, I repeated the matching analysis above for difference break point thresholds (i.e. 1 or more, 2 or more, etc.).

Two other features make my re-analysis different from K&M's original approach. First, the outcome I consider is winning the next service game not just winning points in the next service game. Although a decrease in winning points on serve would imply a decrease in winning the service game, I think it makes more sense to look directly at the service hold probability since that is the central question of myth 22. Second, I also include the effect of converting a chance to break on the next service game hold to see if their is a symmetrical _encouragement effect_ form breaks of service.

What was found for male players? Figure 1 shows the percentage the players in the matched groups held serve after different types of return games. In general, we see the lowest average for service games following a return game in which a player never had a chance to break. Next we find a general increase in the service hold chance after a missed chance to break, that is about 1 percentage point in magnitude compared to no break chances. This is curious because it is the opposite direction of the effect implied by the discouragement theory, as players appear to be slightly more likely to hold after a missed chance. 


<div>
    <a href="https://plot.ly/~on-the-t/876/" target="_blank" title="Control, Missed Chance, Broke Service" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/876.png" alt="Control, Missed Chance, Broke Service" style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:876"  src="https://plot.ly/embed.js" async></script>
</div>

The final set of points are those that correspond to the service games after a break point conversion. Here, we see even higher chances of a service hold (2 percentage points, on average), though the confidence intervals overlap more as we increase the break point threshold from 1 to 4 and the sample size of service games becomes smaller. Although the general pattern is already present for even one missed break point chance, there does apppear to be an upward trend in the effect as the number of break point chances increases. 

When we shift to the women's game, the pattern is strikingly different. There is a smaller difference between return games with no break points and those with one or more missed break point chances. However, the effect is in the negative direction, implying a small but consistent discouragement effect. The opposite is found for service holds after a successful break of service. In this case, as was found for ATP players, service holds are generally more likely. But the differences in the averages are smaller than was found for the men and evidence of any dose effect is also less clear.

<div>
    <a href="https://plot.ly/~on-the-t/878/" target="_blank" title="Control, Missed Chance, Broke Service" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/878.png" alt="Control, Missed Chance, Broke Service" style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:878"  src="https://plot.ly/embed.js" async></script>
</div>


## Summary

Our reassessment of the last of K&M's series of tennis myths brought us more examples of how player performance may and may not be affected by the score. In this case, a matched analysis found evidence that, counter to traditional thought, male players tend to be more determined to hold service after a missed chance to break but even more determined to maintain a lead after a successful break. 

The same characteristics weren't observed for women. Like K&M found, female players show more evidence of being discouraged by a missed break chance. At the same time, breaking service appears to give them some but less pronounced of a psychological boost to hold their subsequent service game. 

If the review of K&M's myths has taught as anything it is to never accept conventional wisdom in tennis if it doesn't have solid data to back it up. Again and again, we have seen how evidence from many matches can run counter to convention. At the same time, we have seen that our conclusions can sometimes depend on the data sources and methods used. These are all reasons to encourage more sports researchers to turn their attention to tennis and support efforts to improve methods and the quality and availability of data being used in the field. 

I hope the K&M posts on this blog have gone some way toward meeting that goal.


