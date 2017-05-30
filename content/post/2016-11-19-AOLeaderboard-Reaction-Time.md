---
comments: true
date: 2016-11-19T00:00:00Z
title: AO Leaderboard&mdash; Reaction Time
url: /2016/11/19/AOLeaderboard-Reaction-Time/
---

In my last post I discussed the idea of _return pressure_ and suggested that it could be measured by looking at the amount of time a receiver gives the server to prepare for their second shot. Players who exert more pressure with their return of serve are expected to get a quicker jump on the ball and make a more powerful shot inside the baseline. 

In this post I want to focus on one part of that equation, the <u>quick jump</u>, by looking at reaction times on the serve return.

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:594px;floating:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/623221698" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.498316% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/623221698?et=4FlC7NGyRH1EDzrLgLtlEA&viewMoreLink=off&sig=jkbmWXyOextUHEmUDJCsiFkFiGXb_Vdy3y1wL3InSrs=&caption=true" width="594" height="395" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

`Reaction time` in these summaries represents the expected seconds a returner takes to make impact with a serve traveling at average speed from the time the serve passes the net. The _average speed of serve_ is the same for all players on the same tour, so the reaction times are all compared against the same standard, using a ridge regression approach. It would be unfair to say a returner was slow to react just because he or she had seen more slow serves than other players, so this approach tries to avoid that. 

The chart below shows the ATP players with the quickest and slowest reaction times based on play at the 2014 to 2016 Australian Open. Only players with 150 or more serve returns over all those years are included, to ensure the estimated times are measured with sufficient precision for each player. The size of the points reflect the number of serve returns a player had in the dataset and larger sizes indicate more confidence about that estimate. 


We find Aussie Nick Kyrgios at the top of the pack with an expected reaction time of 0.61 seconds. Next is Roger Federer with 0.62 seconds, providing support to many claims that Federer reads the server sooner than most players. We find a number of the ATP World Final participants with quick reaction times. Gael Monfils and Novak Djokovic are at the top with times of 0.64 seconds. 

Andy Murray eliminated Stan Wawrinka from the Tour Finals on Friday and also edges him out on his reaction time, taking 0.64 seconds to return, on average, compared to 0.65 seconds for Wawrinka. Murray will face Milos Raonic in the semifinals and might be somewhat reassured to find that Raonic is something of an outlier when it comes to returning serve, taking 0.70 seconds to return serve on average. That could be a key advantage for the World No. 1. 


<iframe width="900" height="1200" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/988.embed"></iframe>


When we turn to the women's side, we find more reaction times of top players that are greater than 0.7 seconds, which we can attribute to the slower paced serve on the women's game. Still a few women have reaction times that are so fast they are competitive with the men's game. At the top of the list is Venus Williams with a lightning-fast 0.67 seconds to return. Here sister Serena is not too far behind with a time of 0.69 seconds, a time that Ana Ivanovic, Eugenie Bouchard and Garbine Muguruza hover around as well. 

On the slower reaction side, we see some of the players with a more defensive style of play including Caroline Wozniacki, with a time of 0.76 seconds, and Sara Errani, with a time of 0.8 seconds. I was surprised to see Madison Keys and Simona Halep also in the group with 0.78 seconds or more to return as I think of them as being more aggressive on the return that those numbers would imply. It may be that, while some of the women in this group hit the ball hard on the return, they lose some time by being positioned further from the baseline. Still, it would take some more digging into the data to see whether that conclusion held up.



<iframe width="900" height="1200" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/990.embed"></iframe>




