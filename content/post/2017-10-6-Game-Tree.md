---
comments: true
date: 2017-10-06T00:00:00Z
title: Assessing Scoreboard Effects
categories: ['pressure','scoreboard',]
tags: ['pressure','scoreboard',]
url: /2017/10/06/Scoreboard-Effects/
thumbnail: "/img/pouille_thumbnail.png"
---

Do the numbers on the scoreboard affect how a player performs? In this post, we look at how to measure scoreboard effects and identify some top players who appear vulnerable and others who seem impervious to the scoreboard.

<!--more-->

Every tennis fan has, at some point or another, thought that a player got 'tight' or 'choked'. These and other pyshchological terms used in the sport share the basic idea that a player's performance is influenced by the scoreboard. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/857046268" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.66667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/857046268?et=iyJR21NvQQxBYeg91F998w&tld=com.au&sig=mqX9IxLCqpF7JjocV5cVhNLjYsXXgNuYXDVIBp2YFcM=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="396" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

A situation ripe for raising the 'choke' card came up [this week](http://www.tennisnow.com/News/2017/October/Nadal-Saves-Match-Points,-Rallies-Past-Pouille.aspx) in the first round of the ATP Beijing tournament. After taking the first set 6-4, Lucas Pouille was on track to capture a major upset and the sixth win over a top 10 player in his career when he pushed Rafael Nadal to a tiebreak in the second set. Pouille squandered two match points and was down 6-7 when he stepped up to serve. When Pouille's second serve went into the net&mdash; his only double fault of the second set&mdash; and gifted Nadal the set, it would be a struggle for anyone not to conclude that the pressure of the scoreboard got to Pouille's head.

We can spin narratives around the cause of any one moment in a match and, for many, this is what makes tennis so appealing. But to make conclusions about systematic patterns of choking or raising one's game when down requires a careful analysis to backup. 

**So how would one go about measuring scoreboard effects?**

There are a lot of options. Some researchers have examined the effect of [break points](http://www.tandfonline.com/doi/abs/10.1080/17461391.2011.577239) on player performance. Others have considered how player performance is influenced by [point importance](http://www.tandfonline.com/doi/abs/10.1198/016214501753168217). I've looked at these and [other specific game situations](http://www.sloansportsconference.com/wp-content/uploads/2016/02/1464-Hot-heads-cool-heads-and-tacticians.pdf). 

More recently, I've been interested in what patterns in performance you can find when every possible state in a regular game is considered (e.g. 0-0, 30-0, 30-30, etc.). One might guess that the combination of player psychology under pressure and the tactical effects due to the alternation of Ad and Deuce could give some interesting results. 

### Scoreboard Selection Bias

If a player played every point the same no matter the situation, you would think you could simply compare the points won in any situation of interest (say, 30-30) to their overall average points won. And, any statistically meaningful difference would suggest a scoreboard effect.

However, there is a pitfall in using this approach over many matches. And that pitfall is _variable opponents_. Assuming that a player will play to their average in all 30-30 situations is only true if they play exactly the same opponents at the same frequency in 30-30 situations as all other points played. 


But is that likely to be the case? 

It might be easier to see the problem if you ask whether any opponent of Rafael Nadal has an equal chance of taking him to 30-30 on his serve? If your answer is 'definitely not' than you should now appreciate that conditioning on game situation introduces an opponent selection bias.

At this point, if you are saying to yourself 'okay, but how bad could the bias really be', have a look at the following chart. This is showing Rafael Nadal's points played on serve against various opponents for tour matches played from 2011 to the present. The points in blue are the occasion a 0-0 point was played and the points in orange are 40-40 or deuce points. Not only do you see that few opponents play an equal number of first points and deuce points against Nadal, but stronger opponents, like Djokovic and Wawrinka have played more deuce points against Nadal than most other opponents.


<div style="padding:2%;">
<img src="/img/nadal_points.png" width=600 />
</div>

This tells us that if we simply compare Nadal's average points won on serve at deuce against his overall average, the difference we will see will be some confusion of opponent effects and, possibly, scoreboard effects, which will be very difficult to make sense of.


### Dealing with Scoreboard Selection Bias

We can take a page out of survey sampling to try to reduce this selection bias. A goal of any good survey is to get a representative sample of from the population of interest. To do this while still keeping a survey to a practical number of participants, surveyors will often have to oversample rare groups so the proportions of demographics in the actual sample don't reflect the true population. The surveyors fix things by weighing the results of the survey so that each participant's responses get a weight equal to their representation in the population.

We can use a similar idea to give all opponents an equal weighting of points for every game situation. If we take the deuce situation again, this has the effect of saying how a player would be expected to perform if they played the same number of deuce points against all the opponents they have played in the past?

I'll call this weighted stat the 'adjusted' points won.

The chart below gives an example of the observed (unadjusted) and adjusted service points won over average for Rafael Nadal. The opponent's points won vary by row in the panels from top to bottom. The "points ahead" along the x-axis are the difference in points Nadal has won versus his opponent. So being +2 points ahead when the opponent is at Love is a 30-0 situation.

One thing that is really interesting in this chart is how much Nadal's performance at a 0 point spread changes when we do our adjustment. Without adjustment, it looks like he is generally performing below average. However, when we adjust it appears that this negative pattern when at deuce completely reverses due to the changing opponent mix in these more tightly contested scenarios. When we correct for this Nadal appears much more effective when at deuce or in other breakpoint situations. 


<div style="padding:2%;">
<img src="/img/nadal_game_adj.png" width=600 />
</div>


One fascinating case where he appears to under-perform even after we account for opponent mix is at 0-30. This may be indicate some kind of special anxiety about this situation, or a disadvantage when down and serving to the Deuce side, or some combination of the two.

### Scoreboard Effect Rankings

The previous example tells us that players with bigger deviations from their opponent-adjusted average are more influenced by opponent effects. I put the total absolute deviations together for some top male players to see what the rankings would reveal. 


Below you can see that in this historical sample of matches, Robin Haase and Rafael Nadal stand out as two of the players most affected by the scoreboard. Players like Roger Federer and Gilles Simon, on the other hand, are on the opposite end of the spectrum and show relatively less change in performance with the scoreboard. There is a large group of players in the middle with quite similar overall affects.

<div style="padding:2%;">
<img src="/img/outlier_rank_game_adj.png" width=600 />
</div>

But what is the thing of real interest is drilling down into the specific patterns of effect for individual players, using my version of a [game tree](http://gamesetmap.com/?tag=game-tree). In the chart below, I've focused on two of the players with two of the higher overall scoreboard effects. Haase in orange has the pattern of being more effective when one point ahead or at an even score with his opponent. When far behind or when far ahead, his performance tends to drop. 


<div style="padding:2%;">
<img src="/img/outlier_game_adj.png" width=600 />
</div>


Kei Nishikori follows a similar pattern but shows more stability compared to Haase when his opponent is at 30, whatever the point spread. 

When looking at these scoreboard effect charts it is important to keep in mind that (1) differences could be due to other factors than psychology (a player might have specific tactics on Deuce vs Ad points or when facing a break point, for example) and (2) given (1) deviations from average aren't necessarily a sign of weakness. Relaxing in certain score situations, stepping up in others, or using variable tactics throughout a game could all result in different performance outcomes with scoreline and could still be beneficial for long-term outcomes. 

But even if we can't assign a specific cause to these effects, by using the weighting method to reduce selection bias, we can at least be more confident that any effects we observe are real.


The code and data for this post can be found [here](https://github.com/skoval/sports-blog/tree/master/R).

