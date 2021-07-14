---
comments: true
date: 2018-11-09T00:00:00Z
title: Using Pressure Ratings to Rank Most Competitive Matches in 2018
categories: ['pressure','ratings',]
tags:  ['pressure','ratings',]
url: /2018/11/09/match-pressure-ratings/
thumbnail: "/img/federer_paris.png"
---


Last week's 252-point Paris Masters semifinal between Novak Djokovic and Roger Federer got many wondering whether it was the best match in their 47 match long rivalry. In this post, I introduce a pressure rating for sets and matches that can help to tell us to rate their relative competitiveness.

<!--more-->

With the ATP Tour Finals just days away, it is approaching that time of year where we all start to reflect on the season. Soon we can expect to see lists of 'best ofs' and takeaways for the year inundating our tennis feeds. 

Such wrap ups inevitably involve rating numerous aspects of the game. Biggest surprises, biggest comebacks, most improved, etc. In sport, assessments like these are usually based on opinion, which, like spats on twitter, can be fun at first but soon get frustrating because of all of the biases involved.

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/1056952130" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:77.27273% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/1056952130?et=mKkox50kQKRao2iVTmRHtA&tld=com.au&sig=otFtQMK-x3ij26K86rnhA47FPH5-S60o1R9GeuRqVSw=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="459" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

Statistical ratings offer a counter to opinion-based ratings. This counter isn't necessarily an improvement as any rating based on stats is only as useful as the quality of the data and the appropriateness of the assumptions that go into it. That being said, the main virtues of a statistical rating are its objectivity and fairness. An algorithm won't take takes and won't favour some data points (whether they be players, matches, etc.) over others.

Anticipating that the latest round in the Djokovic-Federer rivalry will likely make some people's list of best matches of the year, I wondered how you might rate where this or any match in the season rated in terms of competitiveness? The most detailed data that we have on most matches played professionally are point outcomes. This suggests looking at the scoreline pressure throughout the match to measure how tight it was. 

Following this direction of though lead me to a _Pressure Rating_. The rating starts by assigning a pressure score to every point based on how much it could swing the outcome of the match. One way to think of this measure of pressure is to consider how much your bet on the match winner would change if the current point was lost by your pick. If it is the first point of the match, you wouldn't be likely to budge, but, if it was a point on serve in a first set tiebreak, you might think again.

To judge how tough a match was, we could simply take the total pressure, but this would tend to favour really long matches where no player's serve is really threatened (think most matches played by John Isner). To help down-weigh the long but less exciting matches, I look at both the _mean_ and total pressure to get an overall score. The actual pressure rating is on a 0 to 100 scale that can be read as a percentile of possible pressure scores.

## Match Pressure Ratings

Let's consider what Pressure Ratings suggest about the most competitive matches of the season. Because pressure evolves differently for best-of-3 and best-of-5 matches I'll rate pressure relative to matches of the same format. 

Among men's Grand Slam matches, the top 5 according to their match Pressure Rating are shown in the table below. The top position goes to the Isner-Anderson slog in the Wimbledon semifinal, with a rating of 96.9, largely for the epic 5th set. The Isner-Anderson match was also the longest men's Grand Slam match in terms of points played this year, but the rankings in terms of total points and pressure differ for the rest of the list.

The other Wimbledon semifinal played by Djokovic-Nadal also makes the top 5, which has to make a strong case for Wimbledon's 2018 semifinal being the most exciting of the year. Casual tennis fans would probably be unaware of the 3 other top battles in the group, though their Pressure Ratings make it clear that even lesser known players can produce some of the most fascinating scorelines in the sport.

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Match</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Event</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Round</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Score</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Pressure Rating</th>
</tr>
</thead>
<tbody>
<tr style='background-color: #99d4eb;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>Anderson K. - Isner J.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>Wimbledon</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>SF</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>7-6, 6-7, 6-7, 6-4, 26-24</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>96.9</td>
</tr>
<tr style='background-color: #fcfcfc;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Schwartzman D. - Lajovic D.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Australian Open</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>R128</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>2-6, 6-3, 5-7, 6-4, 11-9</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>96.2</td>
</tr>
<tr style='background-color: #99d4eb;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>Djokovic N. - Nadal R.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>Wimbledon</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>SF</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>6-4, 3-6, 7-6, 3-6, 10-8</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; text-align: center;'>95.8</td>
</tr>
<tr style='background-color: #fcfcfc;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Ruud C. - Halys Q.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Australian Open</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>R128</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>6-3, 3-6, 6-7, 7-5, 11-9</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>95.6</td>
</tr>
<tr style='background-color: #99d4eb;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; border-bottom: 2px solid grey; text-align: center;'>Karlovic I. - Sugita Y.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; border-bottom: 2px solid grey; text-align: center;'>Australian Open</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; border-bottom: 2px solid grey; text-align: center;'>R64</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; border-bottom: 2px solid grey; text-align: center;'>7-6, 6-7, 7-5, 4-6, 12-10</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #99d4eb; border-bottom: 2px solid grey; text-align: center;'>94.9</td>
</tr>
</tbody>
</table>

For men's best-of-3 matches in 2018, the matches that brought the most pressure were scattered throughout the season. For those who might have missed the first round of Indian Wells, the Copil-Polansky match would be worth going back to, as it gets the highest pressure ratings of the shorter match format and is the only in the top 5 that went to tiebreaks in every set.


<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Match</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Event</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Round</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Score</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Pressure Rating</th>
</tr>
</thead>
<tbody>
<tr style='background-color: #85b5b3;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>Copil M. - Polansky P.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>Indian Wells</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>R128</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>6-7, 7-6, 6-7</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>96.1</td>
</tr>
<tr style='background-color: #fcfcfc;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Simon G. - Sousa P.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Estoril</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>R32</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>3-6, 6-4, 6-7</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>95.1</td>
</tr>
<tr style='background-color: #85b5b3;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>Ebden M. - Thiem D.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>Shanghai</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>R32</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>6-4, 6-7, 7-6</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; text-align: center;'>95</td>
</tr>
<tr style='background-color: #fcfcfc;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>López F. - de Minaur A.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Paris</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>R64</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>6-7, 6-4, 7-6</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>95</td>
</tr>
<tr style='background-color: #85b5b3;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; border-bottom: 2px solid grey; text-align: center;'>Fucsovics M. - Wawrinka S.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; border-bottom: 2px solid grey; text-align: center;'>Toronto</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; border-bottom: 2px solid grey; text-align: center;'>R32</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; border-bottom: 2px solid grey; text-align: center;'>6-1, 6-7, 6-7</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #85b5b3; border-bottom: 2px solid grey; text-align: center;'>95</td>
</tr>
</tbody>
</table>

On the women's side, the match that takes the highest pressure rating in 2018 was the 48-game R32 match between Simona Halep and Lauren Davis at the Australian Open. This turns out to be the only Grand Slam match in the top 5 highest pressure, driven by its long advantage final set.

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Match</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Event</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Round</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Score</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Pressure Rating</th>
</tr>
</thead>
<tbody>
<tr style='background-color: #dacdd1;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>Halep S. - Davis L.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>Australian Open</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>R32</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>4-6, 6-4, 15-13</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>96.9</td>
</tr>
<tr style='background-color: #fcfcfc;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Rodina E. - Witthoeft C.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Gstaad</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>R32</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>6-7, 6-4, 7-6</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>96.6</td>
</tr>
<tr style='background-color: #dacdd1;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>Stollar F. - Vekic D.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>Washington</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>R16</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>2-6, 6-3, 6-7</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; text-align: center;'>96.3</td>
</tr>
<tr style='background-color: #fcfcfc;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Plíšková Kr. - Gavrilova D.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>Tokyo</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>R32</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>6-7, 6-3, 6-7</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #fcfcfc; text-align: center;'>96.2</td>
</tr>
<tr style='background-color: #dacdd1;'>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; border-bottom: 2px solid grey; text-align: center;'>Pavlyuchenkova A. - Cibulková D.</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; border-bottom: 2px solid grey; text-align: center;'>Strasbourg</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; border-bottom: 2px solid grey; text-align: center;'>F</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; border-bottom: 2px solid grey; text-align: center;'>6-7, 7-6, 7-6</td>
<td style='padding-left: 0%; padding-right:0%; padding-top: 2%;padding-bottom: 2%;width:40%; background-color: #dacdd1; border-bottom: 2px solid grey; text-align: center;'>95.6</td>
</tr>
</tbody>
</table>

I think these examples show that Pressure Ratings can help to size up the competitiveness of matches in a way that considers both the length and point-to-point excitement of the match. The purpose of the ratings aren't to measure the actual quality of play, which would need more detailed data than point-level data provides. What it can tell us is, if we look purely at the scoreboard from point to point, how can we objectively rate the 'neck and neck'-ness of matches against each other.

Pressure Ratings don't have to be limited to matches either. The same idea can be easily extended to rate sets or even players. Lookout for examples of these extensions over the coming weeks.
