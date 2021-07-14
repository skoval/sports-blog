---
comments: true
date: 2017-11-10T00:00:00Z
title: The Many Sides of Excitement 
categories: ['excitement', 'importance',]
tags: ['excitement', 'importance',]
url: /2017/11/10/excitement-indices/
thumbnail: "/img/nadal_win.png"
---

Having a metric for match excitement would be a useful tool for separating humdrum matches from thrillers. In this post, I have a look at two indices for measuring match excitement and discuss what's to like and dislike about each.

<!--more-->


In [last week's post](http://on-the-t.com/2017/11/03/us-open-excitement/), I introduced a new statistic for measuring match excitement, called the cumulative probability change (CPC). This measure was inspired by the cWPA used in major league baseball. The CPC looks at how much change there is in a player's match win chances from one point to the next and takes the total sum of these changes to measure the overall excitement of the match.

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:296px;float:left;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/846510350" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:150% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/846510350?et=qtkOyeQuRgdcuDWZ49Bhbw&tld=com.au&sig=nDw1DOYhuz0x6FBphnDWf726FBF03qrHzNEz8jO9vi4=&caption=true&ver=1" scrolling="no" frameborder="0" width="396" height="594" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

As I mentioned last week, there is also the [Excitement Index (EI)](http://www.tennisabstract.com/blog/2011/09/19/quantifying-comebacks-and-excitement-with-win-probability/). In contrast to the CPC, this stat looks at the average importance of points, where the "importance" is defined as the expected change in a player's match win chances if they were to win the current point versus if they were to lose the current point.

**So what is the difference between these two indices? And why might we prefer one over the other?**


One way to get at this is to consider what it takes to make each index <i>big</i>. Because the CPC is a sum across points, it will be large for longer matches and, among long matches, it will be even bigger when there have been multiple reversals in who is favored to win, creating larger point to point jumps in win expectations.

The EI, on the other hand, is an average so it could be large for short and long matches. What drives it up is when there is high potential for a reversal on many of the points in a match. The "potential" here is a really key point because, by focusing on importance, it only looks at the ability of any one point to create a big match swing but not whether it actually did.

We can see these distinctions more clearly with a real example. Below is the chart of the men's 2017 US Open matches (excluding matches ending in retirements) with the CPC on the y-axis and the EI on the x-axis. You can see that there is a strong relationship between the two, actually when the CPC is raised to 0.4 (as I've done in the below) the relationship is approximately linear.


<iframe width="700" height="600" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1476.embed"></iframe>

Still, the correlation is not perfect so each index is telling us different things. And this means that if we were to use each to come up with rankings for exciting matches, we would get different answers. 

I've highlighted several matches where the disagreement between the two indices is extreme. They are all cases where the CPC is moderate while the EI for the match is quite high. All of the highlighted 4 matches were in the top 20 most exciting matches at the US Open according to the EI. In fact, the EI ranks the Coric-Veseley match 3rd most exciting overall!


From the scorelines of these matches, we can see that 3 of the 4 were all three set matches with multiple tiebreaks. Thus, the matches were close but the eventual winner was always in the advantageous position with respect to the set scoreline. Despite this, these matches have a high average importance because of the evenness of the match and the chance that it could have reversed course at any point even though it never did.

None of the matches appear in the top 20 according to the CPC index. The reason being that they were not particularly long and there weren't any major reversals in the player that had the upperhand.

The two indices of excitement we've discussed will be in agreement much of the time. But when they do differ the difference can be considerable. Which prefer ultimately comes down to whether the anticipation of a reversal of fortune is more thrilling than it's realization.


The data and code for this post can be found [here](https://github.com/skoval/sports-blog/tree/master/R).

