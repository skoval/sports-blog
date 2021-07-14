---
comments: true
date: 2016-07-08T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis - Myth 18
url: /2016/07/08/klaassen-magnus-hypothesis-18/
---

It's a sad day for Federer fans. After a glorious comeback from two sets down in the quarterfinals, Federer's bid for an eighth Wimbledon title was cut short by big-serving [Milos Raonic on Friday](http://www.tennis.com/pro-game/2016/07/milos-meets-his-moment/59432/#.V4Bzq4Q13yg). 

Like most close matches, the margins separating Federer and Raonic were tiny. With 70% of points won on serve and 29% of points won on return, Federer was just one percentage point behind the Canadian star on both skills. This tells us that just a few points made a difference between who did and did not earn a place in the final. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:445px;float:left;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/545520182" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/545520182?et=GN5s9gGsQl5V7XmMJGfeAQ&viewMoreLink=off&sig=HruFwFo_7kgT2mAkwCxw31vHxQMjWSH2IRL4PB0OumY=&caption=true" width="445" height="297" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

There will be a lot of theories about the cause of Federer's loss. Did Raonic's strategy of hitting serves fast to the body break down Federer's return? Was another five-setter too much for 34 year-old legs? Is Raonic's partnership with Johnny Mac starting to pay off?

In addition to all of those factors, I was interested in a comment that John McEnroe, Raonic's new coach, made in the third set. In the fourth game with Federer serving with new balls, the Swiss went down to 0-30. McEnroe made a comment suggesting that Federer had less control because he was playing with the fresh balls. This surprised me because it goes against a conventional belief in tennis that says that a server usually benefits from the speed and bounce of new balls. 

So who is right? And could new balls have _actually_ had any influence on Federer's loss?


## Myth 18: "New balls are an advantage to the server"

Conveniently enough, the effect of the age of a tennis ball in a match is the question Klaassen and Magnus delve into in myth 18 of [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#). To test what advantage new balls might give the server, they look at the age of the balls in terms of games played. Balls with a game age of zero are fresh out of the can, whereas balls with a game age of 8 are as used as they get. 

When K&M looked at how a server's percentage of points won at Wimbledon changed with a ball's game age they found no significant differences for the average player or between players that are more and less highly ranked. Going against conventional wisdom, they conclude that the age of balls has no remarkable effect for the average player.

## Revisiting the New Ball Effect

For many questions in tennis, there is so much variation from player-to-player that looking at average effects isn't particularly meaningful. Suspecting that new ball effects might be another phenomenon in tennis that is very player-dependent, I fit a mixed model to determine each player's probability of winning a point on serve according to the game age of the tennis balls. In these analyses, I also include the return ability of the opponent, which provides a better adjustment for the strength of the match up than a simple rankings adjustment.

The plot below shows the effect on serve win percentage for ATP players competing in 2013-2015 Grand Slams. The effect of game age on y-axis will be negative when older balls are a disadvantage. These effects are plotted against the sum of the players average points won on serve and return, which is used here as a measure of player overall ability. 

There is some suggestion that better players actually benefit by playing longer with a set of tennis balls, which would be consistent with Johnny Mac's suggestion about Federer. But the overall pattern is weak. 

<div>
    <a href="https://plot.ly/~on-the-t/837/" target="_blank" title=", , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/837.png" alt=", , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:837"  src="https://plot.ly/embed.js" async></script>
</div>


The women's game shows a much clearer pattern of effects. In Figure 2, we see that most WTA players have a negative effect with a ball's game age, suggesting that the server does have an advantage with newer balls. Interestingly, the effect appears to be even stronger for some of the strongest players. Though Serena Williams is an outlier as she is one of the player's whose serve outcomes are least influenced by the age of the balls. 

<div>
    <a href="https://plot.ly/~on-the-t/839/" target="_blank" title="Figure 2. Effect of Games Played with Balls, WTA" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/839.png" alt="Figure 2. Effect of Games Played with Balls, WTA" style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:839"  src="https://plot.ly/embed.js" async></script>
</div>


We might also imagine that an effect of new balls would also influence the likelihood of hitting an ace. Figures 3 and 4 look at this question. Here we see a much more prominent advantage found for ATP servers than for overall point wins. 

<div>
    <a href="https://plot.ly/~on-the-t/841/" target="_blank" title=", , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/841.png" alt=", , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:841"  src="https://plot.ly/embed.js" async></script>
</div>

An even stronger effect is found for the WTA players. We also observe an increasing advantage in ace counts with newer balls for better overall players.

<div>
    <a href="https://plot.ly/~on-the-t/843/" target="_blank" title=", , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/843.png" alt=", , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:843"  src="https://plot.ly/embed.js" async></script>
</div>


While a ball's game age is one way to characterize how much play it has had, it does't account for the difference in points played per game. A server that has to fight off four break points in a game is playing with much more aged tennis balls than one who wins the game at love. To account for the possible effects of points played, I looked at the _point age_ of the tennis ball. In these analyses, the age was truncated to 100 or fewer points to avoid effects of very heavily contested games. 


When we look at the age in terms of points played, we see more of an advantage of "younger" balls across ATP players (Figure 5). Accounting for points played also reveals more negative effects among the stronger players. 

<div>
    <a href="https://plot.ly/~on-the-t/845/" target="_blank" title=", , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/845.png" alt=", , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:845"  src="https://plot.ly/embed.js" async></script>
</div>


The pattern for WTA players in terms of points played is similar to what was observed when game age was used (Figure 6). In each case, we see that most players get some advantage from newer balls and that advantage tends to increase with the player's ability.

<div>
    <a href="https://plot.ly/~on-the-t/866/" target="_blank" title=", , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/866.png" alt=", , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:866"  src="https://plot.ly/embed.js" async></script>
</div>


## Summary

The re-analysis of ball age effects suggests that a ball's point age might be a more accurate way of assessing how worn out a ball is, when considering its impact on serve performance. But whether game age or point age, we find effects do support an advantage of new balls for servers, especially in the frequency of aces.

Are the effects big enough to influence the outcome of a match? Let's consider Federer. The estimated effect of a ball's point age for the World No. 3 corresponded to a decline in his serve win probability of 1/2 a percentage point for every 50 points played with the same balls. In other words, it would take a pretty old tennis ball to have a meaningful influence on Federer's game. 

