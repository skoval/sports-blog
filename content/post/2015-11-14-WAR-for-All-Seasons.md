---
comments: true
date: 2015-11-14T00:00:00Z
title: WAR for All Seasons
url: /2015/11/14/WAR-for-All-Seasons/
---

Last week I asked whether [WAR](http://on-the-t.com/2015/11/07/Developing-WAR-for-Tennis/), a comprehensive statistic of player value, has a place in tennis. Although [WAR was developed](http://www.baseball-reference.com/blog/archives/6063) for and has been primarily used in team sports to estimate a player's contribution to team wins, its potential applications are much broader. WAR, in its most general sense, is about giving perspective to a player's performance by comparing the outcomes of a player's outings to a common standard: the replacement player. 

<figure style="float:right;">
  <img src="/assets/shakespeare-tennis.jpg"/>
</figure>

Providing context for wins is an interest of all sports and comes up most often when making cross-generation comparisons. Was Babe Ruth the greatest hitter of all time? Who was the more accomplished tennis player: Rod Laver or Jimmy Connors? Sport has traditionally used all-time-highest records in [greatest of all time](http://ftw.usatoday.com/2015/06/roger-federer-stats-best-tennis-player-ever-goat-wimbledon-us-open-stats) debates. This points to a tradition of assigning "the best" to the player who most dominated the sport during their career, whatever the standard at the time. WAR formalizes this way of thinking by providing a method to adjust a player's achievements for the baseline level of competition at the time those achievements were earned. 

> Would WAR give us a different perspective on player achievement than wins alone?

As an initial testing ground for the usefulness of a WAR-like statistic in tennis, I thought it would be interesting to apply it to the debate over Novak Djokovic's greatest season up to this point in his career. Was his breakout run in 2011 his most impressive year, or has he outdone himself with his accomplishments in 2015? 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:445px;float:left;padding:2%;"><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/478976630?et=R3VPpDgaQZ9C0zs6bXh3Pg&viewMoreLink=on&sig=mbnJLN7XG3HPI_0TF4pbeJU9uQO8A8Bl8ivP6Xv_z5s=&caption=true" width="445" height="297" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/478976630" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div></div>

Even without the wins Djokovic could earn at the end-of-year [Tour Finals](http://www.atpworldtour.com/en/tournaments/barclays-atp-world-tour-finals/605/overview) (which begin on Sunday) he has already won [78 matches in 2015](http://www.foxsports.com.au/the-crowd/novak-djokovics-record-breaking-season-could-propel-him-into-becoming-the-greatest-ever/story-fnvoi4su-1227605029620), 8 more than in 2011. Wins alone would suggest that 2015 has been Djokovic's greater year. Yet this assumes that every win in each season was of equal importance, overlooking changes in the strength of the tour over four years and differences in the mix of opponents faced in each season. For example, in 2011, Djokovic waged racquets 6 times with a Rafael Nadal who was much stronger and more confident than the Nadal of 2015. 

To see more precisely whether differences in the quality of the opponents Djokovic faced in 2011 and 2015 should shift our opinion about his _best season_, we turn to WAR.

---

## Defining a Replacement Player

Replacement players put the "R" in WAR. For the MLB, a replacement player is defined by the ability of players in the minor leagues, the pool of the lowest cost alternates for the current roster. In this way, the expected wins with a replacement player represent a minimum level of win production for the highest level of the sport.

The Challenger Tour is something like the minors of men's tennis. However, the division between the Challenger and ATP Tour is less strict, as players can participate in tournaments for the Challenger and ATP Tour in the same season. It is all dependent on a player's ability to qualify for the tournaments in which he wants to compete. 

Although tennis doesn't have a direct analog for the minor leagues it does have a literal replacement player&mdash;the lucky loser. [Lucky losers](https://en.wikipedia.org/wiki/Lucky_loser) are players who fail to qualify but make it into the main draw because another player isn't able to compete. A lucky loser would be a natural choice to define the baseline of performance on the ATP Tour. 

Because lucky losers only arise when a top player or qualifier withdrawals, they are rare. To avoid an unstable estimate for the baseline ability due to the small number of lucky losers in a season, I will use all qualifiers and lucky losers competing at the Grand Slams and Masters tournaments in a given season. Players who earn a wild card into a draw will be exclude, as factors other than playing ability (not [unlike wild card systems](http://www.foxsports.com/mlb/just-a-bit-outside/story/mlb-postseason-wild-card-game-pittsburgh-pirates-unfair-091715) in other sports) can [influence the selection](http://thetennisisland.com/2015/01/13/the-great-sydney-wildcard-debate-breaking-down-the-rules/) of wild cards.

Using this definition of "replacement player", there were 97 replacement players in 2011 and 88 in 2015 (through the end of September 2015). Using a 12-month [Pythagorean break point win expectation](http://on-the-t.com/2015/09/26/Converting-Clutch-Into-Wins/) to define a player's strength, the combined strength for a typical replacement player was a weighted Pythagorean average, weighting the individual Pythagorean strengths of each player by the number of Tour matches they played. For 2011, the average replacement strength was 41.5%. In 2015, the win expectations for replacement players were notably lower, having an average replacement strength of 38.6%. 


---

## Opponent Strength

Having calculated a replacement strength for the 2011 and 2015 seasons, the next step in deriving WAR for each season is to compute the strength of Djokovic's opponents in 2011 and 2015 at the time he faced them. As with the replacement strength, I use the 12-month Pythagorean win expectation, using the 12 months up to but not including the day of the opponent's match against Djokovic. 


<iframe width="900" height="700" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/710.embed"></iframe>

When the matches are ordered according to the estimated strength of the opponent, in terms of the pre-match Pythagorean win expectation, there are 10 matches that cluster around 85 to 88% in 2011 (Figure 1). By hovering over the bar, you can see the opponent and tournament of each match. The 10 toughest matches were played against Rafael Nadal or Roger Federer. There were 2 matches that could be considered a "cake walk", where the opponent strength was less than 20%. Of the 6 losses in 2011, all but 1 (the loss to Nishikori at Basel) were against opponents who had a 73% or greater Pythagorean strength. 

<iframe width="900" height="700" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/714.embed"></iframe>

In 2015, Djokovic had fewer opponents with a strength over 80% (8 vs 10 in 2011). However, two matchups were against Roger Federer when he had a Pythagorean strength exceeding 90% (one at he US Open Final and the other at the Western and Southern Open Final), which would have made these slightly tougher in expectation than any match in 2011 (Figure 2). Only one match was a clear cake walk in 2015. And, of the 5 losses, 3 were against opponents with a strength over 70%. 

---

## Bringing it All Together

The breakdown of opponent strength in the 2011 and 2015 seasons show how variable the mix of opponents can be for a tennis player from one year to the next. This is where WAR can be of value. Armed with the numbers for opponent and replacement strength, we can now propose a estimate for WAR for tennis. 

In words, we want to calculate

$$
WAR = Wins\;Over\;Replacement - Losses\;Over\;Replacement
$$

where we credit a player for how many more wins they earn over what would be expected of the replacement player facing the same opponents and penalize them for losses that would not have been expected of the replacement player. The estimate for this metric is 

$$
WAR = (Actual\;Wins - Replacement\;Expected\;Wins) - (Actual\;Losses - Replacement\;Expected\;Losses)
$$

where the expected wins and losses for the replacement player are determined by the sum of win probabilities (loss probabilities) from a [Bradley-Terry formula](https://en.wikipedia.org/wiki/Bradley%E2%80%93Terry_model) using the Pythagorean expectation as the player's estimated ability.


<iframe width="900" height="700" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/745.embed"></iframe>

Figure 3 shows the cumulative change in WAR over the course of the 2011 and 2015 seasons. For most of the season, the overall achievement in 2015 was slightly below that of 2011, differing an effective 3 matches earned. By the 76th match, however, Djokovic's 2015 season had caught up with 2011 boosted by a string of strong wins during the hard court Asian circuit. Interestingly, this was the same time that Djokovic claimed 2015 as his career [best season](http://www.usatoday.com/story/sports/tennis/2015/10/14/nishikori-holds-off-kyrgios-to-advance-in-shanghai/73913952/). By the Shanghai final of 2015, Djokovic had surpassed his 2011 season-ending WAR of +38.9 matches. Going into the ATP Tour Finals his 2015 WAR stands at +44.4 matches, a difference of 5.5 earned matches over 2011.

Djokovic's WAR stats argue for calling 2015 his greatest season not because his matches have been tougher but because he has played and won more matches of comparable difficulty as in 2011. With the start of the Tour Finals on Sunday, Djokovic will have still more opportunity to extend the impressiveness of what is already a standout season. 


