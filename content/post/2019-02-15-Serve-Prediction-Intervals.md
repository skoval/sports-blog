---
comments: true
date: 2019-02-15T00:00:00Z
title: Identifying Surprising Performances with Prediction Intervals
categories: ['prediction','surprise',]
tags:   ['prediction','surprise',]
url: /2019/02/15/serve-prediction-interval/
thumbnail: "/img/serve_stock_photo.png"
---

Every player has days when everything seems to work and other days when nothing seems to go right. Saying when a player has truly over (or under) performed is tricky in tennis because there is always an opponent on the other side of the net that is also influencing the outcome of points. In this post, I look at a basic strategy to try to isolate the ability of the server and receiver, and discuss how this might be used to identify surprising performances on serve. 

<!--more-->

Any regular watcher of tennis has probably found themselves (at more than one point or another) wondering if a player is having an 'off day'. It is the kind of reaction that tells us that we had some expectation before the match&mdash; however implicit it might have been&mdash; of how a player would perform and they just haven't lived up to those expectations (think Rafael Nadal at this year's AO final).

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:309px;float:left;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/750415809" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.60118% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/750415809?et=G30uADG7S3B54UkjTuagzQ&tld=com.au&sig=QH5kc2_eewRLbaHheebK3vWz5thusE7E8zcZ30APDh4=&caption=true&ver=1" scrolling="no" frameborder="0" width="509" height="339" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

If you have ever gone on to voice your disappointment to another aficionado of the game, you have probably found yourselves in the rabbit hole that tennis' non-identifiability problem creates. The 'non-identifiability problem' is what happens whenever you have a head-to-head contest where any result is the sum of the performances of each player. Because you can get the same outcome if a player is playing amazingly well or their opponent is playing amazingly poorly, you can go in circles trying to determine which situation was the true one for any individual match. 

That is, unless you bring in some additional information, which is exactly the idea behind the [Barnett and Clarke model](http://www.strategicgames.com.au/journal.pdf) of serve performance.

The Barnett and Clarke model was introduced in 2005. It's basic idea is to suppose that we know how much better (or worse) a player performs on serve compared to the average player (think WAR in baseball). Call this performance compared to the average $\alpha$. Suppose we can do the same for a receiver's ability and call this $\beta$. Then at a given tournament, if the average server wins $\theta$ percentage of points, our estimate of the serve performance of player $i$ against receiver $j$ is

`$$\theta_{ij} = \theta + \alpha_{i} - \beta_{j}$$`

This is an opponent-adjusted expectation of serve performance, where we adjust how much better a player does compared to the average player by how much better the receiver performs compared to the average. 

Because Barnett and Clarke don't say how you go about estimating any of these effects, it leaves us a lot of room to tailor this as we like. This could mean adding in surface or tournament effects for example. What it definitely doesn't allow is non-transitivity, that is, matchup effects. If you estimate a player to do 2% better on serve than the average, than they will be assumed to get that average boost no matter what playing style of particular tactics of their opponent. This might be an oversimplification for some matchups, but it is a reasonable starting point.

Even if we are happy with this basic model for serve, how do we use it to assess a player's actual performance in a match? To get there, we still have to make some decisions. Specifically, how are we going to estimate the effects of the model and how are we going to capture the uncertainty in those estimates?

My preference for this problem is Bayesian hierarchical model. It provides one of the most intuitive ways to model multiple group effects, like we have with the Barnett and Clarke model, and incorporate shrinkage to the mean. Also, and this is such an important advantage, we can create posterior predictive distributions for the quantity of interest, $\theta_{ij}$ in case, that will allow us to quantify exactly what a fantastic performance or an off day would look like.

I've been exploring a version of this approach to look at performances at the Futures level of the sport where match-fixing is of [particular concern](http://www.tennisintegrityunit.com/). I've taken two years of Futures results that includes over 4,000 servers and receivers. For each match, the model for the points won on serve, $y_{ij}$, out of $n_{ij}$ service points is,

`$$y_{ij} \sim Binom(\theta_{ij}, n_{ij})$$`

`$$logit(\theta_{ij}) = \gamma +  \alpha_{i} - \beta_{j}$$`

where $\gamma$ is a surface-specific intercept term. So this is a logistic model for the probability of winning a point on serve. Each of the parameters are given normal distributions with flat priors for the hyper-parameters defining the mean and standard deviation. I implemented the model with JAGS and used a sum-to-zero constraint on the server and receiver effects to ensure their identifiability. It took about 5000 samples of adaptation for the parameter traces to stabilise, though I suspect this could vary a bit with a different dataset. 

One of the players included in the model dataset, who I won't name, has been prosecuted by the Tennis Integrity Unit for fixing a match. The dataset included the match in question as well as three others. 

The first thing we might be interested in is how each of the opponents that player faced compared to the average Futures player? If the 'suspicious' match was against a strong player, it would make a poor performance less suspect than against a weaker opponent. The chart below shows the median and 95% credible interval for each opponent's expected impact on servers at the Futures level.

<div>
<img src="/img/serve_prediction_1.png" />
</div>

The 'impact' is in terms of the multiplicative increase of the server's odds against this receiver, so anything over 1 means the receiver has below average return ability and will actually help the server get a higher percentage, while a number less than 1 means the opponent is a tough receiver. Three of the four opponents this player went up against in the two-year period included were below average receivers. Opponent 4 was the weakest of all, based on their historical match results, and it would not be surprising to see a player increase their server percentage by 50% or more against this receiver. 

Notice how the intervals vary with each opponent. This could happen because of the differences in matches played by each, the differences in the points on return in each match, and/or the natural match-to-match variation for that player. This is a really important part of the assessment of a serve performance because small sample size and player inconsistency would both be reasons to be more skeptical about the unusualness of a performance in any one match.

Now lets look at the player of interest and how they were expected to perform on serve against each of these receivers. The plots below show the distribution for the expected win percentage on serve, accounting for the receiver effects given above. The red vertical lines show the player's actual serve performance in the match. 

<div>
<img src="/img/serve_prediction_2.png" />
</div>

There are two results that were completely consistent with the Barnett and Clarke model. There were against Opponents 1 and 2. Two others show a much weaker performance than expected by the model. Against Opponent 3, the strongest receiver in the group, the player one fewer than 2 of every 10 points on serve when the server was expected to win closer to 3 of every 10. Against Opponent 4, the player did win 3 of every 10, but was expected to do much closer to 50%. 

So we find some extreme discrepancies in performance but to say _why_ would take quite a bit more work. At a minimum, we need to check the validity of the model to make sure it is capturing means and variances accurately. There is always the possibility that we have oversimplified in some way, like non-transitivity, that could be biasing the model. 

But I think this is a useful starting point for similar opponent-adjusted models. And this illustration shows that there is real potential for these kinds of models to help to protect the integrity of the sport. 
