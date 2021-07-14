---
comments: true
date: 2016-10-22T00:00:00Z
title: AO Leaderboard - Backhand Speeds
url: /2016/10/22/aoleaderboard-backhand-speed/
---

Hard to believe that it is only a few months before the start of the 2017 ATP and WTA seasons. Preparations for the 2017 AO in Melbourne are already in high gear. There will be a lot of developments you can expect to see come January, including some new stats using Hawk-Eye ball and player tracking data. These stats were developed by Tennis Australia's Game Insight Group&mdash; a team of scientists TA has brought together to advance the use of analytics in tennis. As a data scientist for the GIG, I wanted to preview these developments and some of the things we are learning from tracking data.

<!--more-->

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:594px;left:float;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/540140726" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/540140726?et=-98qAEG5TNFwrLCMXVltMA&viewMoreLink=on&sig=QTSgu3MfjmwmFVE9-V_uIb-qwEMZ_sMlP-3ALSPX0YU=&caption=true" width="594" height="396" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

The stat I want to present to you today is backhand stroke speeds. This is just one of a large suite of new measures that look at characteristics of shot in more detail than ever before. Now, a backhand speed isn't a difficult thing to calculate with tracking data but tournaments rarely if ever do. Occasionally, we might see a broadcast display the speed of a shot during a rally but this doesn't give us enough information to say what is a _typical_ speed of a shot or which players hit the fastest shot on average. That needs to change and we hope the AO stats will help to move in that direction.

The actual data we have compiled includes tracking data from the 3 past Australian Open tournaments, 2014 to 2016. The 7 courts with the biggest seating capacity have had Hawk-eye in the past. These aren't all of the courts but they cover 70% of the men's and women's singles events. The speeds shown below represent the speed at impact for all backhand groundstrokes that were in play or ended the point in a winner, so errors and other shot types aren't represented. Also, to ensure stability in the estimates only players with 2 or more matches in the combined 3-year dataset were included. 

The first figure below shows the backhand speed characteristics for ATP players. Because I haven't made any exclusions based on the sample size of shots (beyond the requirement of 2 or more matches), I have included the interquartile range and scaled the point denoting the median with respect to the sample size of shots. More on that later.

Among the men, these data suggest that player averages on the pace of the backhand range from 75 to 60 mph. Much less than the speed of a first serve but still impressive when one considers that it is the shot that is the most difficult to generate power. 

<iframe width="900" height="1500" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/975.embed"></iframe>

We have often heard Stan Wawrinka described as the best one-handed backhand in the game. We find Wawrinka right at the top of average speeds, clocking in at 75 mph, which gives some justification to that claim. However, we also see that he has a massive lower tail on his serve, which could indicate a lack of consistency or greater use of spin on the backhand. Some others in the 74-75 mph group are Kei Nishikori, Fernando Verdasco and Lucas Pouille. 

While Djokovic and Nadal are also near the top of the speed rankings at 72 and 71 mph, respectively, we see a lot of the big servers (Raonic, Isner, Pospisil) and other top players like Andy Murray, Roger Federer, and Jo-Wilfried Tsonga, in the under 70 mph group. This could indicate a tradeoff where the mechanical and physiological skills that make for a very powerful serve cost some power on the backhand. 


When we turn to the WTA, we find median impact speeds that are in the same range of the men's. It is also interesting to see that the spread in the backhand speed among the female players is much tighter at the top, suggesting somewhat more consistency in the speed characteristics on the WTA than the ATP. Both of these suggest that flat two-handed backhands are more of a norm for the WTA while the ATP might have more variety of spin on the backhand that could slow the pace but increase the unpredictability of their shots. 

We have to regret the retirement of Li Na when we see that she had the hardest-hitting backhand in recent AO history. American, Madison Keys, is also right up there in terms of power. Kvitova, Azarenka, and Muguruza also reach impressive speeds (median of 71 mph or more) on the backhand. Serena Williams, Venus Williams and Karolina Pliskova are in the 70 mph and below group, which could, again, reflect a tradeoff between big serving and ripping backhands.

<iframe width="900" height="1500" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/972.embed"></iframe>


Speed is only one dimension of a shot and these rankings show us that the best players aren't necessarily the players that hit the hardest. Quality of a shot has to do with many factors: how close it comes to a line, how open the court is, and how much it takes the opponent by surprise. Although the pace of a shot can't tell us everything about a shot's quality, it does, I think, give us insight into a player's style. Players with a flatter and more attacking game should feature high on the pace charts, whereas the players with more variety, spin, or who wait for their opportunities should not. 



