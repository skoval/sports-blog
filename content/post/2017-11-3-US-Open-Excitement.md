---
comments: true
date: 2017-11-03T00:00:00Z
title: A Stat for Excitement and What It Reveals About the Best Men's Matches at the 2017 US Open
categories: ['excitement', 'importance',]
tags: ['excitement', 'importance',]
url: /2017/11/03/us-open-excitement/
thumbnail: "/img/delpo_usopen.png"
---

The 2017 MLB World Series gave baseball fans a thrill-ride for the post-season. It also gives us an idea of how to size up the excitement of a sporting event. In this post, we look at an 'excitement' statistic for tennis and use it to rank the excitement of men's matches at the 2017 US Open. 

<!--more-->

This week the Houston Astros won their first World Series title against the Los Angeles Dodgers in the 7th game of what is likely to be one of the wildest series runs for some time to come. 

Even before the series was over, sabermetricians were prognosticating that the excitement of the 2017 series could be record-breaking. Using a [metric called cWPA](https://www.theringer.com/2017/10/31/16580402/houston-astros-la-dodgers-world-series-best-ever), for "championship win probability added", by Game 5 baseball statisticians were already putting two of the series games in the top 20 all-time most exciting.

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/847281186" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.66667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/847281186?et=eecB2GesR1RYngDd6ZnIXQ&tld=com.au&sig=RCPUIW1JJsx6OVwt-GEFlx2AHMGYF60ukjqCBQa-3YM=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="396" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

The _cWPA_ works by looking at the change in a team's chance of winning the series title from one play to the next. Big jumps in this win probability usually signal a major turning point in the series, like when Alex Bregman got a walk-off single in the 10th inning of Game 5 that put Houston just one game away from the title.

Following the series, the _cWPA_ seemed an intriguing way to put a spotlight on the big moments and the overall wildness of the 2017 World Series. And it got me thinking whether a similar measure could be used in tennis...

## Cumulative Probability Change

The analog for the cWPA for tennis is the cumulative probability change (CPC). For every point in a match, the CPC looks at how the favored player's match win chances have changed and sums the absolute value of all these changes to get the overall magnitude of the "up and downness" of the match.

In mathematical terms, if a match has `$N$` points played and the win probability for the favored player is `$W_i$` at the ith point, then the CPC is


`$
CPC = \sum_{i = 2}^{N} |W_i - W_{i-1}|
$`


In a match where the stronger player takes a quick lead and never looks back, changes in the win probability will be small and the points played will be relatively few, giving an overall scant CPC. However, matches with many points, either due to tiebreak sets of extended games with multiple advantage points, the CPC will grow. 

In this way, the CPC gives us a sense of the excitement value of a match. And, all else being equal, we are more likely to want to watch a match with a big CPC than a small one. 

Jeff Sackmann has also introduced an excitement stat, the [Excitement Index](http://www.tennisabstract.com/blog/2011/09/19/quantifying-comebacks-and-excitement-with-win-probability/), which is related but not the same as the CPC. The Excitement Index is the average point importance, so it registers more highly for matches with a higher density of important points.

## Ranking Excitement at the US Open

Let's put the CPC to practice and see how it ranks the men's matches at the 2017 US Open. For the point-to-point win probabilities in this analysis, I am using an in-match forecast that factors in each player's pre-match Elos and updates their expected match strength based on their serve performance up to the current point. This means the win predictions adjust for the player abilities as well as the scoreline, so two matches that get to the same score won't necessarily give the same win prediction.


The scatterplot below shows the CPC ("Excitement Score") on the y-axis against the total points played on the x-axis. There is clearly a strong positive relationship, with longer matches tending to have a higher CPC. This is reasonable as a longer match is necessarily a more contested one, like the epic Istomin-Ramos match of the first round.

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1472.embed"></iframe>


It is interesting that there is still notable variation in the CPC among matches with a similar number of points played. Consider two of Leonardo Mayer's matches. His 4-set R64 win over Yuichi Sugita took 258 points and had a CPC of 9.7. In the next round against Rafael Nadal, Mayer also went to 4 sets and played nearly the same number of points (260), yet the CPC was only 5.5. 

Why the difference? Both matches began in a very similar way, with the eventual loser winning the first set in a tiebreak. But Nadal's match versus Mayer gets nearly half the CPC because Nadal was much more dominate in sets 2 through 4 and also had a massive advantage over Mayer going into the match, which means his win probability still remained quite high after losing the set. The Mayer-Sugita match kept us guessing much more.


## Factoring in Player Quality

We can't really call the CPC an 'excitement measure' without factoring in player quality. Just suppose that you have two matches with exactly the same point-by-point score and one has two average players and the other is Federer and Nadal. Most tennis fans would consider the second the more exciting of the two, which suggests the the overall player quality matters to how we interpret the CPC.

In the chart below, I've tried to get at quality by taking the sum of both player's hardcourt Elo ratings at the start of the US Open. When the CPC is plotted against this quality measure, the top right quadrant becomes the most interesting one. This is where matches with higher than average CPC and higher than average talent quality land.

<iframe width="700" height="500" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1474.embed"></iframe>

Interestingly, two of the most talked about matches involving Juan Martin Del Potro end up in this region. His five-set epic against Thiem gets the highest CPC of his matches in this group. However, the marathon 335-point match between Jack Sock and Jordan Thompson gets the highest CPC of the matches in the high-quality quadrant.

Baseball statisticians aren't the only ones who can have fun with win probabilities. Tennis can also use stats like the CPC to bring another angle to debates over the sport's best matches. 


The data for this post can be found [here](https://github.com/skoval/sports-blog/tree/master/R).

