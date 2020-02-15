---
comments: true
date: 2019-08-16T00:00:00Z
title: Possible Effects of Abolishing First Service or Advantage Points
categories: ['durations',]
tags:   ['durations',]
url: /2019/08/16/Abolishing-First-Serve/
thumbnail: "/img/djokovic_duration_wimbledon.png"
---


The format changes at Majors are the most prominent of a number of rule changes that are being considered to reduce the length of tennis matches in order to make the tennis 'product' more attractive. In this guest post, Francesco Lisi and Matteo Grigoletto of the Department of Statistical
Sciences at the University of Padua investigate how removing the first serve or advantage points could impact match lengths.

<!--more-->

After the 2019 men's Wimbledon final became the first singles match to be affected by the new tiebreak at 12-12 in the 5th format, many are wondering whether the change was a good thing. Whatever your opinion about that specific change, the fact that every Grand Slam in 2019 is using a different format for men's singles is an indication of how much tennis' governing boards are concerned about match lengths. 

The format changes at Majors are the most prominent of a number of rule changes that are being considered to reduce the length of tennis matches in order to make the tennis 'product' more attractive. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:394px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/1156200733" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:67.171715% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/1156200733?et=-ASGXdxgQaZwSg_swURneA&tld=com.au&sig=HPH5rVxzXDKUOy8futlN41Cex6QB2OSW_vEzcitrjzY=&caption=true&ver=1" scrolling="no" frameborder="0" width="594" height="399" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

These changes range from harmless ones, such as limiting the medical time outs per match or the time for warming up, to more impacting ones, such as modifying the structure of sets and of tie-breaks. 

'We are currently in the process of gathering feedback from various stakeholders, including players, media, broadcasters, sponsors, and fans' said Simon Higson, ATP VP of Corporate Communications and PR. 'No conclusions will be drawn until we have completed this process and gone through the necessary review process.'

To test some of these new rules, the ATP opted for an entirely new competition, the Next Gen ATP Finals, where matches are played best of 5 sets, with first to four games sets, tie-break at 3-All, no-advantage score, no let, shot-clock after 25 seconds. This format, called Fast4, strongly reduces the length of matches, but has been criticized in that it completely changes the traditional set structure and is often perceived by players and audience as 'another sport'.

A fundamental question for all of these changes is whether the length of matches can be reduced while preserving the major features of the sport's scoring system? 

I believe there are basically three possibilities: abolishing advantages, or abolishing the
second service, or both. The rationale being that these alternatives would strongly
reduce the dominance of the serve. 

To understand this point, Figure 1 shows the average number of aces per match by year and Figure 2 the fraction of matches requiring one or more tiebreaks for the years from 1990 to 2018 (source www.atptour.com and OnCourt). The trends in these plots (measured by  nonparametric regression curves in red) suggest that as the strength of serve has risen, so too has the number of service games. 


<div style="text-align:center;">
<img src="/img/lisi_aces_match.png" width=500 />
<figcaption>Figure 1. Average number of aces per ATP match by year</figcaption>
</div>

<div style="text-align:center;">
<img src="/img/lisi_tb_set.png" width=500  />
<figcaption>Figure 2. Average fraction of ATP matches going to a tiebreak by year</figcaption>
</div>

<br>

What impact these changes could have is a bit tricky, since no match is currently played with only one of these changes. But we can make some headway using simulation. The purpose of these simulations is to demonstrate how the probability distribution of match durations would shift under each rule change. 


Both Kovalchik and Ingram (2018)[^1] and Lisi and Grigoletto[^2] proposed two
simulators for tennis match durations. In the latter we simulated
20,000 best of 5 matches played with the following formats:

1) the current standard
2) the standard played with no advantages on 40-40
3) the standard format played with only one serve
4) the standard format with no advantages and one serve

To simulate a match with only one serve we have to consider which are
the consequences of abolishing the two-service rule on the server's performance. We can follow the viewpoint of Klaassen and Magnus (2014)[^3]: a
player with only one service is equivalent to a player with two services
who has fault the first one. So, with only one service, a player should use his current second service, and not something between the first and second one.
  Thus, when the first serve is eliminated, the simulation uses only data on second serve performance to set the parameters that determine the likely outcomes on serve. 


Building and setting the simulator requires the following pieces of
information: kind of tournament (Grand Slam, ATP1000, ATP500, ATP250),
surface, round, final score, duration, number of aces, number of double
faults, number of first and second serves, number of first and second
serves in, number of winning first and second serves, total points won,
as well as the distributions of the ball's speed and of the number
rallies for each point.  For the distribution of the shot number per point we used data from the Match Charting Project (www.tennisabstract.com); for the ball's speed we referred to [this post](http://on-the-t.com/2016/11/26/aoleaderboard-forehand-speed/) and [this post](http://on-the-t.com/2016/10/22/aoleaderboard-backhand-speed/); all other data come from OnCourt.


Data refer to matches played in the period from January 2011 to December 2018.
We discarded cases with missing durations, Olympics and Next Gen ATP
Finals, as well as walk-out and retired matches. After that, our sample
consists of 3744 best of five matches and 16246 best of three matches.


<div style="text-align:center;">
<img src="/img/lisi_dens_durate.png" width=500 />
<figcaption>Figure 3. Kernel density estimation of match lengths.</figcaption>
</div>

<br>

Figure 3 shows kernel density estimations of match length distribution together with average durations. The humps present
in the right tail of both distributions are the effect of the different
number of sets with which the match can end.  The table below  lists the values of some specific quantiles, from the median (Q50) to
the 99.9% quantile (Q999). Median lengths are 92 minutes (mean 98) for
best of 3 matches and 142 minutes (mean 150) for best of 5 matches.

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Match</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Q50</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Q75</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Q90</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Q95</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Q99</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: center;'>Best of 3</td>
<td style='text-align: center;'>92</td>
<td style='text-align: center;'>119</td>
<td style='text-align: center;'>142</td>
<td style='text-align: center;'>154</td>
<td style='text-align: center;'>200</td>
</tr>
<tr>
<td style='text-align: center;'>Best of 5</td>
<td style='text-align: center;'>142</td>
<td style='text-align: center;'>179</td>
<td style='text-align: center;'>214</td>
<td style='text-align: center;'>233</td>
<td style='text-align: center;'>319</td>
</tr>
</tbody>
</table>

Results, in terms of median durations and probabilities of a match
lasting more that $k$ hours, are given in the following table. They are based
on 20,000 matches played best of 5. Model's parameters were estimated
using only data from Grand Slam's championships.

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Scenario</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Median</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>3)</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>3.5)</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>4)</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>4.5)</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: center;'>Standard</td>
<td style='text-align: center;'>144</td>
<td style='text-align: center;'>25.1</td>
<td style='text-align: center;'>10.6</td>
<td style='text-align: center;'>3.6</td>
<td style='text-align: center;'>1.2</td>
</tr>
<tr>
<td style='text-align: center;'>No Ad</td>
<td style='text-align: center;'>132</td>
<td style='text-align: center;'>15.1</td>
<td style='text-align: center;'>4.8</td>
<td style='text-align: center;'>1.2</td>
<td style='text-align: center;'>0.3</td>
</tr>
<tr>
<td style='text-align: center;'>One service</td>
<td style='text-align: center;'>114</td>
<td style='text-align: center;'>9.9</td>
<td style='text-align: center;'>3.1</td>
<td style='text-align: center;'>0.8</td>
<td style='text-align: center;'>0.2</td>
</tr>
<tr>
<td style='text-align: center;'>No Ad, One Service</td>
<td style='text-align: center;'>106</td>
<td style='text-align: center;'>4.1</td>
<td style='text-align: center;'>0.8</td>
<td style='text-align: center;'>0.2</td>
<td style='text-align: center;'>0.03</td>
</tr>
</tbody>
</table>


Results show that both the 'No Ad' and 'One service' options are
effective in reducing the probability of matches lasting more than three
hours, with a stronger effect produced by the 'One service' format. More
specifically, the probability of a best of five match lasting more than
three hours is around 25% with the current format, but it reduces to
around 15% by abolishing advantages on 40-40 and to around 10% by
abolishing the first serve. 

The effect is even more drastic if both
modifications are introduced, with only a 4.1% probability of
exceeding three hours. Apart from the duration itself, it is known that
shorter formats also imply an increase in the number of upsets and,
thus, in the uncertainty about the final result of the match.


Let us consider, now, the match played in the 2019 men's Wimbledon final, lasted 297 minutes. What would the expected duration have been under each of the 4 scenarios, according to the simulator? 20000 matches have been simulated using only the rallies distribution for grass and probabilities estimated on the previous matches between Federer and Djokovic. Expected durations and probabilities of the match lasting more than $k$ hours are given in the following table


<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Scenario</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>Median</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>3)</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>3.5)</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>4)</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>P(>4.5)</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: center;'>Standard</td>
<td style='text-align: center;'>167</td>
<td style='text-align: center;'>36.5</td>
<td style='text-align: center;'>15.9</td>
<td style='text-align: center;'>5.5</td>
<td style='text-align: center;'>1.7</td>
</tr>
<tr>
<td style='text-align: center;'>No Ad</td>
<td style='text-align: center;'>150</td>
<td style='text-align: center;'>21.2</td>
<td style='text-align: center;'>6.5</td>
<td style='text-align: center;'>1.6</td>
<td style='text-align: center;'>0.35</td>
</tr>
<tr>
<td style='text-align: center;'>One service</td>
<td style='text-align: center;'>147</td>
<td style='text-align: center;'>19.0</td>
<td style='text-align: center;'>6.1</td>
<td style='text-align: center;'>1.6</td>
<td style='text-align: center;'>0.39</td>
</tr>
<tr>
<td style='text-align: center;'>No Ad, One Service</td>
<td style='text-align: center;'>131</td>
<td style='text-align: center;'>7.9</td>
<td style='text-align: center;'>1.7</td>
<td style='text-align: center;'>0.33</td>
<td style='text-align: center;'>0.05</td>
</tr>
</tbody>
</table>

Both 'No Ad' and 'One service' scenarios do not dramatically change the average duration but markedly reduce the probability of a long match. For example, the probability of a match lasting more than 4.5 hours, under current rules, is 1.7%. This is a quite low probability but not completely negligible. The 'No Ad' format reduces it by almost 5 times and the 'One service' format by more than 4 times.

Thus, from a statistical viewpoint these two modifications are not very different, and the choice between them could be based on the players' preferences. The joint application of 'No Ad' & 'One service' rules, instead, seems too impacting and, probably, not necessary.
  


[^1]: Kovalchik, S. A., & Ingram, M. (2018). Estimating the duration of professional tennis matches for varying formats. Journal of Quantitative Analysis in Sports, 14(1), 13-23.

[^2]: Lisi, F. and Grigoletto, M. (2019). Modeling and simulating durations of professional tennis matches by resampling match features. (Under Review)

[^3]: Klaassen, F., & Magnus, J. R. (2014). Analyzing Wimbledon: The power of statistics. Oxford University Press, USA.

