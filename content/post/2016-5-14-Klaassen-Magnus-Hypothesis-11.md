---
comments: true
date: 2016-05-14T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis - Myth 11
url: /2016/05/14/klaassen-magnus-hypothesis-11/
---

After Novak Djokovic's surprising early exit last month at the Monte Carlo Masters tournament, this week it was Roger Federer's turn. His first clay court event since Monte Carlo was brought to a decisive halt when he lost to Dominic Thiem in the third round at the Rome Masters.

Now any player can have an off day, especially when coming back from [injury](http://www.tennis.com/pro-game/2016/05/federer-frustrated-upbeat-looking-rebound-rome/58360/#.VzXV8YQ10lI). But when it happens to the best players in the game, it's often the source of alarm. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:445px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/490359771" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:68.181818% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/490359771?et=AVd_OvVwRhRgaJgvIhjU-A&viewMoreLink=on&sig=MUQZ_Lj3tVeyAhHjSbfo_YRX29Nqcd71nPJGVdai1iA=&caption=true" width="445" height="303" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

So much attention is placed on the occasional upset of the top 4, in fact, that there is a general perception that the best players are most vulnerable to a loss in the earliest rounds of a tournament. Whether data actually supports this idea is exactly what Klaassen and Magnus try to decipher in Myth 11 of [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#).


## Myth 11 "Top players must grow into the tournament"

What K&M refer to as "growing into a tournament" is the idea that top players don't perform to their best ability in the early matches of a tournament. The more common and interchangeable description of this phenomenon is the "slow start". Curiously, at the top of the tennis game being a "champion" and a "slow-starter" often go hand-in-hand. At least, that is [the perception](http://www.tennis.com/pro-game/2015/04/back-back-best/54504/#.VzXEPIQ13y9) of the tennis world. 

But is it actually true that the best players are still warming up (or even intentionally taking it easy) in the first rounds of a tournament?

The way K&M approached this problem was to say that, if it is true that better players are slow starters, then one should find a "round" effect on performance, even after accounting for the quality of their opponent. To test this theory, K&M looked at the round reached with their historical Wimbledon dataset. They test whether higher ranked players are less likely to reach their expected round, according to their ranking and the ranking of the opponents they faced. They find no evidence that men or women top players underperform in early rounds.

This result is counter to the general idea of the "slow start". How could this be? 

As K&M put it: "One explanation could be that professional tennis is so competitive that top players can not and do not relax in the early rounds."

## Revisiting Myth 11

It would be reasonable to argue that Wimbledon data might not give a complete enough picture of slow starts. And there is always the concern with using official ranking as the proxy for player quality. To address the first issue, I looked at the role of round on the frequency of upsets for all ATP matches between 2010 and 2015. In keeping with K&M's analysis, I first use the log difference in player rankings to control for quality. In all the results shown, wins are with respect to the higher-ranked player.

Figure 1 below shows the rank-adjusted win percentage by round, going from the earliest to the latest rounds of an event as you move from left to right along the horizontal axis. Because these are "rank-adjusted", we can consider the win percentage to show the likelihood of the higher ranked player winning a match when facing an opponent of comparable quality. The slow-start theory would predict a lower win percentage at the start of the tournament, but the pattern we see is the opposite, with better players doing somewhat better earlier on. 

<div>
    <a href="https://plot.ly/~on-the-t/806/" target="_blank" title="" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/806.png" alt="" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:806"  src="https://plot.ly/embed.js" async></script>
</div>


No round differs very much from any other (the margins of error basically overlap across the board) but there is a clear pattern that runs counter to myth 11. Perhaps this is partly explained by the peculiarities of official rankings? To see what role ranking has in the pattern above, I repeated the analysis but this time used player [Elo ratings](http://www.tennisabstract.com/blog/category/elo-ratings/), which are a better measure of player quality and performance expectations. 


Interestingly, when we account for the differences in the Elo ratings of two opponents, there is absolutely no difference in the chance of winning across rounds (Figure 2). This not only tells us that the slow-start theory doesn't hold up when it comes to upsets but that player rankings under-estimated the ability of lower ranked players in early rounds. 

<div>
    <a href="https://plot.ly/~on-the-t/808/" target="_blank" title="" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/808.png" alt="" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:808"  src="https://plot.ly/embed.js" async></script>
</div>


## Slow Starts and Set Wins

An _upset_ might be too strong a measure of a "slow start" at the top of the game. This would especially be the case if the top players are strategically more relaxed in the early rounds, reserving their best game for the advanced stages of an event. 

To see if there is any evidence of this, I looked at set results by round. In order to include best-of-3 and best-of-5 events, I took the set spread over the maximum possible sets for a match. So, for example, if the higher-ranked players won a best-of-3 in 3 sets, the outcome would be 1/3. 

If round has an influence on set wins, we would expect fewer expected sets in the early rounds of a tournament after accounting for player quality (using Elo, of course!). Is this what we find?

Figure 3 shows how many more sets a higher-ranked player would be expected to win over an opponent of comparable quality in a best-of-5 match. The average is around 1. Like match wins, there isn't an indication that players are more prone to drop a set early in an event than at any other time in any event. 

<div>
    <a href="https://plot.ly/~on-the-t/810/" target="_blank" title="" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/810.png" alt="" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:810"  src="https://plot.ly/embed.js" async></script>
</div>


## Do We Blame Availability Bias?

The numbers above suggest that K&M were right that top players just don't have the luxury to "grow into a tournament". But, if that is the case, how did the idea of slow starts among top players come about? One explanation has to do with the quirkiness of our memory. While it tends to forget the usual, our memory loves the out-of-the-ordinary as much as Donald Trump love's [taco bowls](http://www.npr.org/2016/05/07/477023446/-memeoftheweek-donald-trumps-taco-bowl) (See what I mean?). 

This might be a good trait in some Darwinian sense, but when we think events are more frequent because we remember them better, we can often get it wrong. This is also known as [availability bias](https://en.wikipedia.org/wiki/Availability_heuristic). Remember when Djokovic dropped a set to Bjorn Fratangelo in the first round of Indian Wells this year? I know I do. Remember when he won in straight sets against Philipp Kohlschreiber in the next round?...If you are struggling to recall that one, you've just seen availability bias at work.

Now even though slow starts might not be an epidemic at the top of the game, this doesn't mean that all top players play equally strong throughout an event. Benjamin Morris of _FiveThiryEight_ had an excellent piece in 2014 showing that [Serena Williams is more dominant](http://fivethirtyeight.com/datalab/serena-williams-is-some-kind-of-clutch/) in later rounds than earlier rounds. Just one more way in which Williams is exceptional.


