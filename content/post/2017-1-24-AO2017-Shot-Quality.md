---
comments: true
date: 2017-01-24T00:00:00Z
title: AO 2017 Quarterfinalist Shot Quality
url: /2017/01/24/AO2017-Shot-Quality/
---

The second week of a Major always reminds us what a high-level of shot making we are lucky to witness in the current era of tennis. Yet, even among the top players we know there is variation in the _quality of shot_. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:80%;max-width:594px;float:right; padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/632541328" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/632541328?et=3eD9iNuvTMd9Dlws_T27AA&viewMoreLink=on&sig=5PttTTDV5dEVICAlTB0ywC4BbFZ9rizjecHYkmFgJLY=&caption=true" width="594" height="396" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

At the Game Insight Group we have been working on a way to measure shot quality. Winner and error counts tell us something about the outcomes of shots ending a point, but that is only a subset of shots and a somewhat crude measure for the shots it does include. Often we want to know more than what happened as a result of a shot, we want to know what the shot was like and how it compares to other shots in the game.

This is where the notion of quality comes in. Quality is something that every shot possesses, whether a winner or a shot in play. To measure the quality of the major strokes in tennis&mdash; serve, backhand, forehand&mdash; we build a training set of shot-level data that grades the outcome of each shot to how winning it was versus how much it was an erroneous shot. 

Once this information is in place for a large set of shots, we use machine learning models to determine how the speed, accuracy, height and landing position of a shot are related to a shot's "grade", fine tuning until a model is found with good classification accuracy. With a built model, we can apply it to any shot and obtain a prediction for each possible grade (e.g. an outright winner, forces an error, etc.). We take the sum of each grade and its probability over all possible grades to get an overall score for a shot. To estimate a player's quality, we take the average over their scores.

Because we are taking the average, it is possible that a player with a higher quality score isn't necessarily the more successful player. The reason is that we are ignoring the context of a shot and whether the type of shot was a good choice or not, which could be critical to separate two highly talented players like we saw last night with Rafa Nadal's win over Gael Monfils. Still, even without this dimension, I think the average quality is interesting because it suggest what is typical of a player's shots and whether they are better on one stroke on average compared to others. 


Using separate models for serve, forehand and backhand strokes, we can look at the comparative quality of shot at the 2017 Australian Open for the players still in the draw. The numbers are relative to the best historical score in the past five years at the Australian Open, which would be John Isner on serve, for example. So a score of 100 would indicate a player who is performing at the level of the best player performance in the recent past.


When we look at the men, Stan Wawrinka is the player with the highest overall quality of shot in the event. He is also the first man thru into the semifinals after his win today over Jo-Wilfried Tsonga. Most of the benefit seems to come from the backhand where other players have struggled more so far (especially Rafael Nadal), presumably because of the faster pace of play this year appears to have. Milos Raonic and Roger Federer are second and third, players who each have a high edge on serve and forehand. 

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1091.embed"></iframe>


On the women's side, the standout player is Mirjana Lucic-Baroni. The 34 year-old who is having a Cinderella-story run this year can thank her forehand for not letting her down. This is setting her apart so far in the event, when it comes to the typical quality of shot. Surprisingly Serena Williams is lowest in this group, while her sister, Venus is third overall. While Serena's serving has been on par or above the others, her backhand quality is behind so far. 

Although anything can happen in the next week, these scores give us some sense of what strengths and comparative weaknesses to expect in the matches to come. 

<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1093.embed"></iframe>


