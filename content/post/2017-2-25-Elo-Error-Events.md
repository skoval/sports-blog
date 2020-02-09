---
comments: true
date: 2017-02-25T00:00:00Z
title: Does Including Futures and Challenger Events in Elo Improve Predictions?
url: /2017/02/25/Elo-Error-Events/
---

With all of the tiers that exist on the professional tennis circuit, from 10K events up to the Majors, I've often wondered how tournament tiers should be factored into Elo predictions and whether some events should be excluded entirely. The standard Elo gives players a bigger boost (10% exactly) for wins at Majors but treats wins against similar opponents at any other event the same. 

<!--more-->

Most of the time I've been working with Elo I have used ratings that were based on 250 events and above (International and above for women). Recently, I updated ratings to include _all_ professional events. I was curious what difference, if any, this would have for the predictions at those higher level events.

Using match outcome from 1991 to the present, the RMSE for men shows a very subtle change whether we include Futures and Challengers or we don't. The RMSE is modestly reduced at the lower tier events and gets progressively smaller as the strength of event increases.


<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1126.embed"></iframe>

_Why don't lower tier events make more of an impact on predictions?_

If we compare the predictions with and without ITF and Challenger events directly, we see that there is a positive correlation and that correlation improves at higher level events. We see there can be a lot of variance for some range of the ratings but this tends to be largest closer to predictions of 50%. Given the modest improvement, it appears that, where predictions differ, the inclusion of all match results sometimes is a benefit but often is not.

<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1128.embed"></iframe>

Patterns in error for the WTA show similar results. We see improvements mostly at international events when predictions include all events history, but improvements are small elsewhere. 

<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1130.embed"></iframe>


The correlations between the two types of Elo approaches also have a similar pattern as the men. The correlations are positive but quite weakly associated especially in the middle range of predictions.

<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1132.embed"></iframe>


_Why don't we see more of a difference from two dramatically different Elo methods?_ I think it is an issue of mixing.

If we look at 2015 alone, there were 3,324 male players who competed in at least 1 Futures event. Among that group only 18 _also_ competed in the main draw of a Grand Slam event. That is only 0.5%! The number competing in the main draw of 250 or 500 is higher at 73 but that still represents a meager 2% of Futures players.

What this tells us is that some tournament tiers are like small circuits where there is a lot of play within but not much play outside. So as we expand Elo to include more results, the problem looks more and more like the problems with predicting team strength for the NCAA March Madness. The major question this raises is how to accurately assess player strength when some segments of the tour rarely meet?


