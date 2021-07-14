---
comments: true
date: 2015-10-10T00:00:00Z
title: Djokovic Streaky But No DiMaggio
url: /2015/10/10/djokovic-streaky-but-no-dimaggio/
---

If you have been following the ATP Tour's China Open this week, you have probably seen references to Novak Djokovic's [winning streak](http://www.foxsports.com/tennis/story/rafael-nadal-ana-ivanovic-sara-errani-china-open-tennis-quarterfinals-100915). He will enter the final against long-time rival Rafael Nadal with a 28-0 record over 6 total appearances at the Beijing 500. 

<!--more-->


<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:238px;float:left;padding:1%;"><div style="overflow:hidden;position:relative;height:0;padding:124.789916% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/2630542?et=qRtLxmR-SbdxlNqz-JaLqw&viewMoreLink=off&sig=Js4fifTfGRjGy00keEbtQL5QDnCZlBXfYB7O4zONTKc=" width="238" height="297" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/2630542" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div></div>

Streaks, whether hot hands or slumps, have fascinated fans throughout sport's history. (No doubt there are petroglyphs somewhere recording the longest consecutive spearings of wooly mammoths!) Entire books are [dedicated to the topic](https://books.google.com/books?id=1ncJ36IgFZUC&lpg=PA77&dq=streaks%20in%20sport&pg=PA78#v=onepage&q=streaks%20in%20sport&f=false) and many academics have spent years perfecting the calculation of some of the most standout streaky performances. 

There is general agreement that one of the most miraculous displays of streakiness in sport was Joe DiMaggio's 56-game hitting streak in the 1941 baseball season. In a 2009 article by statistician [Don Chance](http://amstat.tandfonline.com/doi/pdf/10.1080/09332480.2009.10722956) (no, I'm not making this up), DiMaggio's feat is estimated to have had a 1 in 3,650 probability of happening in his career, accounting for his batting average and hit opportunities. 

> With all the talk of streakiness in the tennis media of late, I was curious how much Djokovic's achievement compares to the _Yankee Clipper_.


Taking a simple approach that treats Djokovic's wins at the China Open as the outcomes of 28 tosses of a coin with
probability $p_m$ on the $m$th match, we can estimate Djokovic's achievement as the product of his probability of winning at the beginning of each of the 28 match-ups. 

To estimate $p_m$, I computed Djokovic's 9-month [Pyhtagorean win expectation](http://on-the-t.com/2015/09/26/Converting-Clutch-Into-Wins/) (based on the $BP^2$ model) and the same for his opponents. I then took 1 minus the ratio of these win expectations (a Bradley-Terry model) and add a correction factor so that the overall mean of Djokovic's win probabilities equaled the mean of his $BP^2$ expectation. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:297px;float:right;padding:1%;"><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/492139254?et=fYjqx40IT8FwiHtGvPkzSg&viewMoreLink=off&sig=zn3PpulAwqtU7EglQOe728m3Si1vW6tKVz7qiaIdDp0=" width="297" height="198" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/492139254" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div></div>


Figure 1 shows how unlikely his China Open streak has become with each match. These are on the natural log scale so you would exponentiate each value to get the chance of the streak on the probability scale. For example, with his 2013 win over Rafael Nadal, Djokovic earned his 19th consecutive win at the tournament and raised the surprise factor to a probability of 3%. With his 28th win, his streak now has a probability of 0.6%.

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/489.embed"></iframe>

Given an average match win probability of 84% at Beijing, a rough calculation would suggest that Djokovic would have to win 18 more consecutive matches (basically, 4 more perfect tournament appearances) at the China Open to beat Joltin' Joe's record. 

But there is another record Djokovic is known for that could contend with the 56-hit phenomenon. This is Djokovic's [43-match winning streak](http://sports.espn.go.com/sports/tennis/french11/news/story?id=6622357) that began with straight wins at the 2010 Davis Cup Final against France and continued thru the 2011 season until he lost to Roger Federer in the semifinals of the French Open. Figure 2 shows the streak probability progression using the same approach as described above (Note that walkovers, like Djokovic's advance to the semis at Roland Garros due to Fabio Fognini's withdrawal from the quarterfinal, are excluded). This shows that beating Richard Gasquet on red clay and earning the 43rd win of the streak brought the chance of his run to 0.05%&mdash;a likelihood approaching impossibility but still nearly two-fold more likely than Joe's run.

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/475.embed">
</iframe>

The fact that the numbers tell us that Djokovic's streak falls short of DiMaggio's might seem surprising considering that Joe only had to get one hit each game and not _consecutive_ hits. But we have to remember that hits are much harder to come by in baseball, where a "good hitter" is getting as few as 3 hits of every 10 at bats. In tennis, the tournaments stack the cards much more in favor of the higher ranked players with the way seeds are separated in the draws, making early round wins a near certainty for the best players in many cases.

Still, to catch Joe, Djokovic would have had to continue his run for only 4 more matches. And the way he has been playing this season, he might just catch him yet. 

