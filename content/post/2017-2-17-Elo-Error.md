---
comments: true
date: 2017-02-17T00:00:00Z
title: Error Patterns with Elo Predictions
url: /2017/02/17/elo-error/
---

Last week I began to take a [look at error patterns](http://on-the-t.com/2017/02/10/Elo-Court-Pace/) with tennis Elo predictions. The question of interest was how does serve advantage influence Elo performance?

<!--more-->

Looking at Elo error rates against a player's average serve performance in a year showed the most error for average servers. In this post, I want to look at serve performance at events and in matches to better understand how Elo performs across services and for better or worse servers.

The first analysis looks at the way error in Elo predictions for ATP matches (from 1991 to the present) varies with the average serve performance at the event, an indirect measure of the court pace. The chart shows a negative correlation where Elo error tends to decrease as the serve advantage of an event (pace) increases. An event with an average serve percentage as low as 57% has an RMSE of 0.48 whereas an event with an average of 67% has an RMSE of 0.45, a reduction of nearly 10%.


<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1122.embed"></iframe>


The above suggests a general trend of greater accuracy in faster paced tournaments. But it doesn't tell us whether the error within an event varies for better or worse servers. What if you are an especially good serve on a fast surface? Or an average server on a slow surface? 

_What error would we expect for different servers at a tournament with the same average serve advantage?_

The second chart shows Elo error against the serve performance in a match. Each panel corresponds to a different event pace, measured by the average serve performance at the event. For events within the range of a 59% to 68% serve advantage, the most typical for the ATP tour, we see a rainbow shape in the error that suggests that the prediction error is lowest for the worst and best serves. Elo gets most befuddled for average servers. Interestingly, the peak in the errors varies with pace of the event. The vertical lines in the plots are the average serve advantage for the event and we see that this point closely aligns with the peak error, in general.


<iframe width="800" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1124.embed"></iframe>


These analyses tell us that Elo doesn't simply struggle predicting for an average server in a season. The method is most error prone for the players that are closest to the average performance in an event, presumably, because it is harder to distinguish players near to the average than at the extremes. 

Standard Elo ratings in tennis do not account for the event server performance of player serve performance. Yet both of these factors are related to errors in Elo prediction. This suggests that Elo performance could be improved by accounting for serve performance and not just match wins. 

