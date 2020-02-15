---
comments: true
date: 2018-11-17T00:00:00Z
title: Who Has Experienced the Most and Least Set Pressure this Season?
categories: ['pressure','ratings',]
tags:  ['pressure','ratings',]
url: /2018/11/17/Experienced-Pressure/
thumbnail: "/img/zverev_finals.png"
---


After introducing _Pressure Ratings_ for matches, this post looks at how a similar approach can be used to develop a _Set Competitiveness_ rating for players. The _Set Competitiveness_ measures the pressure of a player's sets in a way that allows direct ranking against the pressure typically faced by other players.

<!--more-->

In my [last post](http://on-the-t.com/2018/11/09/match-pressure-ratings/), I showed a rating metric for match pressure that was derived by combining total and average serve pressure in a match. The _Pressure Rating_ starts by assigning a pressure score to every point that is equal to how much the server's win chances would drop if the point was lost. You may have seen a similar concept of pressure called leverage in other sports.

There are many other interesting pressure summaries that can be looked at beyond match pressure. For example, we can summarise the total set and mean set pressure a player has experienced across all of their matches in the season to determine the typical competitiveness of a player's sets.

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:left;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/1062370994" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.66667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/1062370994?et=E3sH_V-LTmN47FQkzpJhFQ&tld=com.au&sig=WQ2aXexRKqfN1hMGt5QVNR2x3NFw-XrDuo7MPZlHais=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="396" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

Just like match _Pressure Ratings_, I'll combine the total and mean set pressure into an easy to interpret 0 to 100 score. To do this, I calculate a standardised effect for the total and mean that shows how many standard deviations a player's pressure characteristics are away from the average, controlling for set number and match format. 

I use shrinkage when calculating the effect estimates as some players have many fewer tour-level sets than others (Miriam Bulgaru, for example, has only 2 tour-level sets played in 2018 while Karolina Pliskova has played more than 150).

The 0-100 score is the percentile that the total pressure and mean pressure z-scores correspond to with a Student t distribution that has 2 degrees of freedom. With this heavy-tailed distribution, a score of 99 would be earned when a player has experienced a level of pressure that is more than '6 sigmas' (or 6 standard deviations) far from the average.

Now with that explainer out of the way, what can we expect a _Set Competitiveness_ rating to reveal?

To have a high score a player will need to have more 'close' sets than the typical player. Because service and return games both factor into the overall set pressure, we can expect a mix of player types to produce tighter sets: big servers who frequently go to tiebreaks as well as strong ralliers who may win fewer service games but create great pressure when receiving. 

## ATP Set Competitiveness

A tally of the _Set Competitiveness_ for ATP and Grand Slam matches played in 2018, includes ratings for roughly 300 players. The chart below highlights the 30 players with the highest and lowest _Set Competitiveness_ out of this group.

Ivo Karlovic takes top spot with a _Set Competitiveness_ rating of 97.1 in 2018, while John Isner comes in second place with a rating of 96.9. Karlovic and Isner are two players who, because of their dominance on serve but weaker return, player more tiebreaks than most anyone on tour. This puts the outcome of the set down to a few points, ramping up the pressure of the typical set they play. While the average point carries just 2% pressure for most players, the average is closer to 3% for Karlovic and Isner. 

A more surprising result is Andrey Rublev's No. 3 spot. The youngster doesn't have the service weapon of Karlovic or Isner, but he has nevertheless faced similar levels of set pressure. What have been some standouts for Rublev? His 3 most pressure-packed sets in 2018 were his [3rd set victory](https://www.flashscore.com/match/AcC98rQn/#match-summary) over Guido Pella in Doha, his [first set against](https://www.flashscore.com/match/Q3XvLvYu/#point-by-point;1) Robin Haase in Monte Carlo, and his [3rd set loss](https://www.flashscore.com/match/bBzDCf9a/#match-summary) to Alex De Minaur in Washington.

<div>
<img src="/img/atp_pressure_faced.png" width=700 />
</div>

On the opposite end of the spectrum we see many players with strong season win records. However, the pressure ratings don't perfectly correlate with win record. Alexander Zverev, for example, takes the No. 1 spot over World No. 1 Novak Djokovic. Zverev is an interesting case because he has been extremely dominant outside of Grand Slams, winning many sets with relative ease. Yet, at Grand Slams, he has under-performed and not advanced far enough to go through multiple tough matches that could have raised his _Set Competitiveness_[^1]. 

That script has gone differently at the World Tour Finals this week, where Zverev defeated Roger Federer in two tough sets to reach a spot in the finals. We will have to wait until January to know how much he might have benefited from the best-of-3 format in London.

Another interesting player in the low pressure group is Nick Kyrgios, who gets the 11th lowest set pressure rating for the season. Kyrgios' fire-and-ice approach to play can make it hard to know what kind of set you will get. When he is on, he can put away opponents with lightning speed. When he check out, sets can end just as quickly out of sheer lack of interest. Whichever Kyrgios shows up, you can expect his sets to be fast.



## WTA Set Competitiveness

With no women's player have the dramatic contrast of serve and return skill of Karlovic and Isner, the top of the competitiveness ratings is harder to predict. The top position goes to Anastasia Pavlyuchenkova with a rating of 98.6. Pavlyuchenkova has won 50% of her matches this season, with an average pressure of 3% per point. Some of her most contested sets were the [3rd set](https://www.flashscore.com/match/n9zf3cKq/#point-by-point;3) of her title win over Dominika Cibulkova in Strasbourg, the [3rd set](https://www.flashscore.com/match/O2TJEY29/#point-by-point;3) of her loss to Carolina Garcia in Tokyo, and her epic [1st set](https://www.flashscore.com/match/2Lvbiafd/#point-by-point;1) against Sloane Stephens in Beijing.  

Some other interesting results at the top of the competitiveness ratings is the inclusion of top players Caroline Garcia, Darya Kasatkina, and Karolina Pliskova who are all tightly clustered around ratings of 87-88. Two of the more aggressive players on tour&mdash;Aryna Sabalenka and Jelena Ostapenko&mdash;round out the bottom of the top 30.

<div>
<img src="/img/wta_pressure_faced.png" width=700 />
</div>

More of the top players, especially those with a more defensive style of play, are among the players with the lowest competitiveness ratings. While drawing a match with one of the highly rated players means an expected slog of a match, drawing a match from this group, which includes Simona Halep, Caroline Wozniacki and Angelique Kerber, could mean a possible wipeout. 

The two lowest ratings go to players who have had lacklustre seasons and not been able to raise the pressure against the majority of their opponents in tour-level matches. The 3rd spot from the bottom, however, goes, somewhat surprisingly, to Elina Svitolina. Despite a decisive win at the WTA Finals, Svitolina has had an up-and-down year, dominating for much of the beginning of the year, struggling for most of the middle, and having a turnaround in the end. 

This initial look at a measure of competitiveness rating show that for both men and women, that competitiveness doesn't come about with a single playing stile and ending up at the top or bottom of the competitiveness ratings can have as much to do with consistency as overall win strength.  

[^1]: Zverev also puts a spotlight on the gap between a player's perceived pressure and the pressure implied by the scoreline. 
