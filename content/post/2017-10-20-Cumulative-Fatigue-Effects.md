---
comments: true
date: 2017-10-20T00:00:00Z
title: Is Fatigue Cumulative?
categories: ['duration','serve','fatigue',]
tags: ['duration','serve','fatigue',]
url: /2017/10/20/cumulative-fatigue-effects/
thumbnail: "/img/keys_usopen.png"
---

Fighting off fatigue in any Grand Slam match is a challenge. Does this get even harder after multiple matches?


<!--more-->

Last week, I discussed the idea of in-match fatigue. The idea was inspired by modelling of [relief pitcher speed declines](http://nessis.org/nessis17.html) that adopted dose-response models in medicine to track fatigue effects. Using a similar approach to service speeds, a small case study suggested it could be a useful way to identify fatigue-related loss in service speeds in a tennis match.


<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:296px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/844998262" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:150% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/844998262?et=ItLHlDZxQfV6OThxJC74TA&tld=com&sig=oRrILjX0vScR9nl8pLPuJrvyacg3sLmhBWWmEboCYkk=&caption=true&ver=1" scrolling="no" frameborder="0" width="396" height="594" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

In this post, I am interested in the progression of fatigue over the course of an event. In other words, do players get more vulnerable to fatigue the deeper they go in a tournament?

We can look to the 2017 US Open, the last Grand Slam of 2017, to find some interesting fatigue patterns. Here are two of the more interesting fatigue trends I found.

The first chart shows the round-by-round service speed trends for women's finalist Madison Keys. The actual speeds are shown in blue and the orange points are the smoothed estimates based on a best-fitting fatigue model, as described in [my previous post](http://on-the-t.com/2017/10/13/fatigue-effects/). 


On her first serve, Keys did not show any strong fatigue effects until the finals. In her 7th match, Keys' first serve took a dramatic dive by her 50th serve. From that point on, Keys dropped further and further below her average first serve speed of 165 KPH with each additional serve.

<div style="padding:2%;">
<img src="/img/madison_keys_cum_fatigue.png" width=700 />
</div>

Although there wasn't a similar dip in her second serve, there was a surprising drop in her overall average speed after the first round (which was a high of 133 KPH). The 7th round had the lowest average speed on second of 126 KPH.


As another illustration, we consider Dominic Thiem. Thiem is an interesting contrast to Keys because his fatigue effects show their largest effect on the second serve rather than the first. They also emerged much earlier in the event.

<div style="padding:2%;">
<img src="/img/thiem_cum_fatigue.png" width=700 />
</div>

By Thiem's fourth and final match at the US Open, the chart above shows his second serve speed had an overall drop compared to the previous rounds, going from an average of 150 KPH to 135 KPH. Also, by the 140th serve in his 5-setter against Del Potro, Thiem's second serve speed began to decline exponentially.

Although, there wasn't the same downturn in any one match on his first serve, we do see a drop in the average speed on first compared to the second and third rounds. In those matches, he maintained an average of 178 KPH but that dropped to 172 in the fourth round.

Whether owing to the cumulative physical demands, the increasing psychological pressure, or other part of the experience of a Grand Slam event, this small set of illustrations suggest that round-by-round analyses of the physical characteristics of a player's serve can uncover interesting patterns worth exploring. 


The code and data for this post can be found [here](https://github.com/skoval/sports-blog/tree/master/R).

