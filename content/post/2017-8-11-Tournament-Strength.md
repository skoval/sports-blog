---
comments: true
date: 2017-08-11T00:00:00Z
title: Sizing Up Tournament Strength and Depth
categories: ['strength','depth',]
tags: ['strength','depth',]
url: /2017/08/11/Tournament-Strength/
thumbnail: "/img/murray_muscles.jpg"
---

Tournament _strength_ and _depth_ are terms we commonly hear used in tennis. Yet the sport doesn't have good stats for either of these properties of events.

<!--more-->

Characterizing the quality and range of the field at tennis events have always been popular talking points for the sport. In some ways, however, the 2017 season has put an especially bright spotlight on these characteristics. The main reason for this being the selective scheduling or absences due to injury of some of the sports biggest names. 

<div style="float:right;padding:2%;">
<img src="/img/murray_muscles.jpg" />
</div>

Aside from the basic tiers that make up the tour's structure (Slams, Masters, 500, etc.), when someone wants to say something about the strength of a draw they are usually left to look at the percentage of some definition of "top players". The sport could use something less arbitrary to quantify strength and to deal with the variable draw sizes across events. 


## Tournament Strength 

**What would make a good measure of tournament strength?**

I've been giving this some thought and I think some desirable properties are the following. First, _strength_ needs to start with the ability of the individual players in the draw and use an accurate measure of their ability. This criterion immediately makes the ranking points of the event inadequate because it is invariant to the draw. Second, no single player should dominate the strength measure as this would defeat the purpose of having an event statistic. Along the same lines, a third property is that the strength reflect the hierarchical nature of tournaments that are made up of rounds where the number of competitors differs by powers of 2. Lastly, the strength should be a single number that is greater for stronger draws and lower for weaker draws. 

One measure of tournament strength that meets these criteria takes a weighted average of the highest Elo-rated player expected to exit in each round. For example, in a 128 draw, we would get the highest Elo for the first round by taking the 64 players with the lowest Elo ratings and finding the highest among this group.

Call each round's maximal Elo rating `$Elo_R$` (for R = 1, 2, 3, etc.) a formula for the strength can be calculated as follows:

$$
Strength = \sum_R  \frac{Elo_R \times R}{\sum_R R}
$$

This average weighs the Elo for each round group (based on the expected finishers in that round) by the normalized round, which is the round number over the sum of rounds. This puts more emphasis on the top of the draw without neglecting the strongest finishers in earlier rounds. For example, the expected winner of a Grand Slam would get a weight of 22%. 

This proposed measure of strength is a function of Elo ratings and will be on the same scale. In this way, the measure can be interpreted as the implied strength of the best players exiting in each round, with more emphasis on players in the final rounds. 


<iframe width="700" height="600" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1452.embed"></iframe>


Above, I've calculated the event strength for 250 and above events in 2017. While the strength increases with each event level, the cool thing about the event-specific strength stat is that it allows us to see the within-tier variation in strength. For instance, even though all Grand Slams have the highest strength&mdash; each over 2200 points&mdash; the Australian Open was about +30 points in strength over the French Open and Wimbledon. 

As you might expect, the strength variation gets greater with each lower tier of event. Among the Masters this year, the Miami masters had the lowest strength while Indian Wells and all of the clay-court Masters events were on par with the strength at the Majors.

Among 500 events, the lowest strength in the 2017 season was at Hamburg while the highest was at Dubai.

## Tournament Depth

Another dimension of draws is depth. While strength tells us about the overall quality of the best among the competition, depth should tells us about how close the ability is among competitors. 

We can use the maximal round Elo, as defined above, to get at depth by comparing the highest round Elo to the smallest. In math terms,

$$
Depth = max{(Elo_R)} - min{(Elo_R)}
$$

A smaller number indicates greater depth while a larger number indicates a greater range in ability among each round of competitors. 


<iframe width="700" height="600" frameborder="0" scrolling="no" src="//plot.ly/~on-the-t/1454.embed"></iframe>


When we look at the way strength and depth have correlated in 2017, we see that depth at Masters and Majors is lowest and fairly uniform across event, with the between-event differences in depth being within 100 points in general.


There is much more spread in depth at 500 and 250 events. It is at these levels where the tightest competition is found and a number of events have depths as small as 300 points or less, which could be driven by the smaller draw sizes among these events. 

From a fan point of view (setting favorite players aside), we would expect the most interesting events to be those with the highest quality and smallest depth. Based on this criteria, one of the more interesting 500 events was Rotterdam and one of the more interesting 250 events was Brisbane.

The code and data for this post can be found [here](https://github.com/skoval/sports-blog/tree/master/R).





