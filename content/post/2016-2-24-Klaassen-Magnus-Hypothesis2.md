---
comments: true
date: 2016-02-24T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis - Myth 2
url: /2016/02/24/klaassen-magnus-hypothesis2/
---

The second myth addressed in Klaassen and Magnus's instant classic of tennis analysis, [Analyzing Wimbledon](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#), is the myth of serving first in a match.

<img src="/assets/cointoss.jpg" style="float:right;padding:2%;" width="400" height="200" />


## Myth 2: "Is there an advantage to serve first in a set?"

The coin toss is one of those pre-match rituals that many of us fast-forward through. If you _can_ recall any occasion when you have stopped to watch the coin toss, there is a very good chance that the player who won the toss opted to serve. 

In most cases, players prefer to serve first because there is a general belief that serving first gives a player an edge. Why would that be? 

There are a variety of explanations, all psychological in nature. Some say that players are fresh in the first game, making holding serve even more certain. Others say the benefit of playing from a clean slate increases effectiveness on serve. Then, once a player is ahead in the game (however it happens), this adds confidence that makes it that much easier to close out the set. And so on... 

> Is there evidence that players benefit from serving first in a set?

## Conclusions of Klaassen and Magnus

Tennis juggernauts Klaassen and Magnus evaluated Myth 2 (there stated favorite) with data from Wimbledon and found that players were more likely to win the first set if they served first but were more likely to lose any other set if they served first. Huh?

This paradox is explained by the fact that the player who serves first is a random event determined by the coin toss, whereas the player who serves first in any other set is directly related to the winner of the previous set and how they won. After the first set, the loser of the last set will serve first if the set winner won on serve (which is the usually way player's win the set). This makes serving first in any set other than the first highly correlated with the skill of the serving player. 

When the quality is controlled, Klaassen and Magnus show that the advantage of serving first disappears, a result that his has been replicated by an [IBM analysis](http://www.ibmbigdatahub.com/blog/keys-match-tennis-it-advantage-serve-first).

That still leaves the first set, where serving first is not correlated with player quality. In this case, K&M conclude that there is a slight advantage to serving first. Why? Because they find that players are more effective in winning points in the first game, by 3 or 4%. 

I was baffled when I first read this and kept expecting the "But when we looked at..." the entrez to some clarification at a moment of puzzlement that so often appears in Klaassen and Magnus's work. Yet it never came. 

So I went about replicating this finding to see if 1) it was real and 2) if so, what could be the cause?

## Revisiting the Advantage of Serving in the First Game

Using 2,000 randomly selected ATP matches and an equal number of randomly chosen WTA matches from the past five years, I contrasted the probability of winning a point in the first game for the serving player and compared that to the same probability for all other games. Counter to Klaassen and Magnus's finding of a 3-4 percentage point increase in winning points on serve in the first game, I found no significant serve advantage in the first game for either tours.

To try to understand the different result, I plotted the average points won on serve by the game order. Figure 1 shows the pattern for the ATP, Figure 2 for the WTA. This reveals a few interesting trends. Win percentages get much more variable in later stages of the match where the sample size diminishes. More interestingly, we see a few peaks at games where new balls are introduced, which happens after the first 7 games then every 9 games (game 1, game 8, game 17, etc.). Overall, new balls provide a 1% point increase on average for points won on serve. 

<iframe width="600" height="700" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/782.embed"></iframe>

The effect is somewhat more pronounced for the women's tour. Overall the effect of new balls is approximately a 1.5% percentage point increase for winning a point on serve.

<iframe width="600" height="700" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/784.embed"></iframe>


Although not seen here, it is possible that the Game 1 effect observed by Klaassen and Magnus in the Wimbledon data from the nineties could be attributed to the effect of playing with a fresh set of balls on the fast-paced surface of that era.

## Taking Advantage of New Balls?

If there is a real advantage to serving with new balls, this raises the question of what choices a player can make to capitalize on the new ball effect. Playing with new balls in the eighth game (the first change after the start of the match) could strategically be more important than playing with them in the first--because it is a later stage in the game. However, because a player has less control over getting to serve on the eighth game than the first, electing to serve first and hoping to break before the eighth game, is the surer bet. 

This updated analysis suggests that a player can expect a very modest edge by electing to serve first. not do to any psychological effect but to the favorable bounce of new balls.



