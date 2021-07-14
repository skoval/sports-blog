---
comments: true
date: 2019-08-09T00:00:00Z
title: A Stat for Must-See Matches
categories: ['compeitiveness','ratings',]
tags:   ['compeitiveness','ratings',]
url: /2019/08/09/must-see-matches/
thumbnail: "/img/halep_rogers.png"
---

A constant conundrum for tennis fans is deciding which match to watch at any particular time. In this post, I look at how we can quanitfy the 'must-seeness' of a match based on it's overall quality and competitiveness using player ratings. 

<!--more-->


As you have been following the Rogers Cup matches this week, there were probably many times when you had to choose one from multiple live matches to watch. Do you know why you made the choices you did? Did you go with whatever was scheduled on the best court? Or with the player with the highest ranking? Or with some gut feeling about which would be the closest match?

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:left;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/1160434285" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.66667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/1160434285?et=v6mmeKMzSgFuVwYDgFe_dw&tld=com.au&sig=8UDuWAkxG0edAaA2e-ZH7Bj4PEuH77WjZmyOBbzvfWo=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="396" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

It is one of the most FOMO-inducing situations for tennis fans, especially in the early days of an event shared by the men's and women's tours.  Of course, by toggling among multiple matches we can convince ourselves that we aren't really having to choose. But I don't think our attention is really ever fooled. 

Maybe it is just a sign of age creeping up on me, but I often find myself wanting some way to simplify my tennis-watching choices. Or, at least, to help me anticipate where the best viewing experience might be at any one time. 

My usual practice has been to scan the betting odds of scheduled matches, which tells me which matches the market thinks are going to be close. But I find that my inclination isn't always for the most competitive match. Overall quality is a key factor as well; basically, I would be willing to accept a bigger gap in the odds if the playing level of both players was still reasonably high. 

I've chatted about this problem numerous times with Martin Ingram&mdash;who shares my obsession about such problems and who consistently finds a clever solution before I do to most of them. While we both agreed that competitiveness and quality weren't the only factors that setup a great match (style and head-to-head were other big ones, for example), we agreed that these factors alone might still do quite well in separating the wheat from the chaff. 

So the basic idea is a stat that combines a measure of quality and competitiveness. Put mathematically, 

$$
Must-See = Competitiveness + Quality
$$

Since player ratings are our main resource for judging the relative skill of players, they are a natural choice for measuring both the overall ability of competitors (quality) and their gap in ability (competitiveness).

For quality, we can simply take the sum of the ratings of players. This is similar to the idea of a 'bonus' as described by Klaassen and Magnus. Below is the distribution of quality for tour matches in 2019. While men's matches have a slightly higher mean, both tours exhibit skew to the right. That tail, the 5000+ group, is where the highest-quality matchups of the season can be found. 


<div>
<img src="/img/must-see-quality.png" />
</div>


Competitiveness, on the other hand, is all about the difference in player ratings. This is the 'malus' in the language of Klaassen and Magnus. In fact, the ratings difference is the only random quantity that goes into match predictions in Elo and other paired comparison forecasting systems. 

<div>
<img src="/img/must-see-competitive.png" />
</div>

The competitiveness distribution above shows us that there is little difference between tours. Also, the massive right-skew means that it is more typical to see a close match than a heavily lopsided one. It would be a much less interesting sport if the distribution didn't exhibit this kind of skewness. 

So on the one hand we have match quality with a vast range and the highest quality being quite rare, while match competitiveness has a narrower range and highly competitive matchups are relatively common. How do we combine these two measures considering these opposing properties?

One idea is to focus on quality but introduce a penalty based on the lopsidedness of the match. We can do this by putting the competitiveness in terms of the expected win probability for the stronger player, and then measuring that expectation against the most competitive match (a 50-50 win chance).

$$
Must-See = (Quality - Average) * (1 - (Win Prob - 0.5))
$$

In this way, the quality-over-average is decreased in proportion to the percentage point distance from an even match.  

We can get an idea of how this approach works by looking at the top 10 'must-see' scores in 2019 for the men and women. Although the intended purpose is to sort the quality among matches happening in the same week and round, this still gives us some sense of the stat's performance. The predominance of the Big 3 on the men's side and Halep, Williams and Barty on the women's side suggests it is doing something sensible. Looking at the scores retrospectively points to a few matches that didn't live up to their expected level of interest, the Australian Open men's final and the Wimbledon women's final being two cases in point.

Undoubtedly, the 'must-see' stat presented here won't meet everyone's individual definition of a 'have-to-watch' match. But I think, by bringing together two key ingredients of a great match into a single number, it can still be a useful stat to consider when scheduling your own viewing or when looking back on which matches did and didn't live up to their billing.

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Event</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Player</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Opponent</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Match Result</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Quality</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Competitiveness</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Must-See Score</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: center;'>Australian Open</td>
<td style='text-align: center;'>Rafael Nadal</td>
<td style='text-align: center;'>Novak Djokovic</td>
<td style='text-align: center;'>6-3 6-2 6-3</td>
<td style='text-align: center;'>1661</td>
<td style='text-align: center;'>0.88</td>
<td style='text-align: center;'>1462</td>
</tr>
<tr>
<td style='text-align: center;'>Rome</td>
<td style='text-align: center;'>Rafael Nadal</td>
<td style='text-align: center;'>Novak Djokovic</td>
<td style='text-align: center;'>6-0 4-6 6-1</td>
<td style='text-align: center;'>1591</td>
<td style='text-align: center;'>0.89</td>
<td style='text-align: center;'>1416</td>
</tr>
<tr>
<td style='text-align: center;'>Wimbledon</td>
<td style='text-align: center;'>Novak Djokovic</td>
<td style='text-align: center;'>Roger Federer</td>
<td style='text-align: center;'>7-6(5) 1-6 7-6(4) 4-6 13-12(3)</td>
<td style='text-align: center;'>1469</td>
<td style='text-align: center;'>0.93</td>
<td style='text-align: center;'>1366</td>
</tr>
<tr>
<td style='text-align: center;'>Wimbledon</td>
<td style='text-align: center;'>Rafael Nadal</td>
<td style='text-align: center;'>Roger Federer</td>
<td style='text-align: center;'>7-6(3) 1-6 6-3 6-4</td>
<td style='text-align: center;'>1405</td>
<td style='text-align: center;'>0.95</td>
<td style='text-align: center;'>1335</td>
</tr>
<tr>
<td style='text-align: center;'>Mutua Madrid Open</td>
<td style='text-align: center;'>Novak Djokovic</td>
<td style='text-align: center;'>Dominic Thiem</td>
<td style='text-align: center;'>7-6(2) 7-6(4)</td>
<td style='text-align: center;'>1370</td>
<td style='text-align: center;'>0.93</td>
<td style='text-align: center;'>1274</td>
</tr>
<tr>
<td style='text-align: center;'>French Open</td>
<td style='text-align: center;'>Rafael Nadal</td>
<td style='text-align: center;'>Roger Federer</td>
<td style='text-align: center;'>6-3 6-4 6-2</td>
<td style='text-align: center;'>1660</td>
<td style='text-align: center;'>0.76</td>
<td style='text-align: center;'>1262</td>
</tr>
<tr>
<td style='text-align: center;'>French Open</td>
<td style='text-align: center;'>Novak Djokovic</td>
<td style='text-align: center;'>Dominic Thiem</td>
<td style='text-align: center;'>6-2 3-6 7-5 5-7 7-5</td>
<td style='text-align: center;'>1497</td>
<td style='text-align: center;'>0.83</td>
<td style='text-align: center;'>1243</td>
</tr>
<tr>
<td style='text-align: center;'>Mutua Madrid Open/td>
<td style='text-align: center;'>Roger Federer</td>
<td style='text-align: center;'>Dominic Thiem</td>
<td style='text-align: center;'>3-6 7-6(11) 6-4</td>
<td style='text-align: center;'>1360</td>
<td style='text-align: center;'>0.90</td>
<td style='text-align: center;'>1224</td>
</tr>
<tr>
<td style='text-align: center;'>French Open - Paris</td>
<td style='text-align: center;'>Rafael Nadal</td>
<td style='text-align: center;'>Dominic Thiem</td>
<td style='text-align: center;'>6-3 5-7 6-1 6-1</td>
<td style='text-align: center;'>1667</td>
<td style='text-align: center;'>0.71</td>
<td style='text-align: center;'>1184</td>
</tr>
<tr>
<td style='border-bottom: 2px solid grey; text-align: center;'>Dubai</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>Gael Monfils</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>Marin Cilic</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>6-3 4-6 6-0</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1028</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1.00</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1028</td>
</tr>
</tbody>
</table>

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Event</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Player</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Opponent</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Match Result</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Quality</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Competitiveness</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Must-See Score</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: center;'>French Open</td>
<td style='text-align: center;'>Ashleigh Barty</td>
<td style='text-align: center;'>Marketa Vondrousova</td>
<td style='text-align: center;'>6-1 6-3</td>
<td style='text-align: center;'>1222</td>
<td style='text-align: center;'>0.98</td>
<td style='text-align: center;'>1198</td>
</tr>
<tr>
<td style='text-align: center;'>Mutua Madrid Open</td>
<td style='text-align: center;'>Simona Halep</td>
<td style='text-align: center;'>Ashleigh Barty</td>
<td style='text-align: center;'>7-5 7-5</td>
<td style='text-align: center;'>1235</td>
<td style='text-align: center;'>0.94</td>
<td style='text-align: center;'>1161</td>
</tr>
<tr>
<td style='text-align: center;'>Mutua Madrid Open</td>
<td style='text-align: center;'>Simona Halep</td>
<td style='text-align: center;'>Kiki Bertens</td>
<td style='text-align: center;'>6-4 6-4</td>
<td style='text-align: center;'>1293</td>
<td style='text-align: center;'>0.89</td>
<td style='text-align: center;'>1151</td>
</tr>
<tr>
<td style='text-align: center;'>French Open</td>
<td style='text-align: center;'>Marketa Vondrousova</td>
<td style='text-align: center;'>Johanna Konta</td>
<td style='text-align: center;'>7-5 7-6(2)</td>
<td style='text-align: center;'>1138</td>
<td style='text-align: center;'>0.98</td>
<td style='text-align: center;'>1115</td>
</tr>
<tr>
<td style='text-align: center;'>French Open</td>
<td style='text-align: center;'>Petra Martic</td>
<td style='text-align: center;'>Marketa Vondrousova</td>
<td style='text-align: center;'>7-6(1) 7-5</td>
<td style='text-align: center;'>1102</td>
<td style='text-align: center;'>1.00</td>
<td style='text-align: center;'>1102</td>
</tr>
<tr>
<td style='text-align: center;'>Wimbledon</td>
<td style='text-align: center;'>Simona Halep</td>
<td style='text-align: center;'>Serena Williams</td>
<td style='text-align: center;'>6-2 6-2</td>
<td style='text-align: center;'>1094</td>
<td style='text-align: center;'>1.00</td>
<td style='text-align: center;'>1094</td>
</tr>
<tr>
<td style='text-align: center;'>Mutua Madrid Open</td>
<td style='text-align: center;'>Petra Kvitova</td>
<td style='text-align: center;'>Kiki Bertens</td>
<td style='text-align: center;'>6-2 6-3</td>
<td style='text-align: center;'>1147</td>
<td style='text-align: center;'>0.93</td>
<td style='text-align: center;'>1067</td>
</tr>
<tr>
<td style='text-align: center;'>Miami Open</td>
<td style='text-align: center;'>Ashleigh Barty</td>
<td style='text-align: center;'>Karolina Pliskova</td>
<td style='text-align: center;'>7-6(1) 6-3</td>
<td style='text-align: center;'>1063</td>
<td style='text-align: center;'>0.99</td>
<td style='text-align: center;'>1052</td>
</tr>
<tr>
<td style='text-align: center;'>Stuttgart</td>
<td style='text-align: center;'>Petra Kvitova</td>
<td style='text-align: center;'>Kiki Bertens</td>
<td style='text-align: center;'>7-6(3) 3-6 6-1</td>
<td style='text-align: center;'>1044</td>
<td style='text-align: center;'>0.99</td>
<td style='text-align: center;'>1034</td>
</tr>
<tr>
<td style='border-bottom: 2px solid grey; text-align: center;'>Australian Open</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>Petra Kvitova</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>Ashleigh Barty</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>6-1 6-4</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1030</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1.00</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1030</td>
</tr>
</tbody>
</table>
