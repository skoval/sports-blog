---
comments: false
date: 2015-09-19T00:00:00Z
title: Charting the Match Charting Project
url: /2015/09/19/charting-match-charting/
---

With the existence of Hawkeye and the IBM Slamtracker, tennis fans might be under the impression that the CPUs of tennis analysts are overflowing with high-quality stroke-by-stroke data on today's matches. Regrettably, this is far from the truth. The data that drives the most interesting visualizations during a broadcasts, like summaries of the frequency of shots by their position on court, or the data behind the Challenge System are under the proprietary control of a few corporate giants (IBM for the Slams, SAP for the WTA), which means they are also out-of-reach of tennis researchers. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:297px;float:right;"><div style="overflow:hidden;position:relative;height:0;padding:67.340067% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/2526625?et=B6jpJ_CBTwlu3UwAzAMbqA&viewMoreLink=off&sig=eV7GRsgcYtHPKT6NP8cVEcWxO8z3TjtmLJiE3zXVtOw=" width="297" height="200" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;padding:5%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/2526625" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div></div>

While the siloing of data is a problem in all sports, some sports have made significant efforts to make rich data sets available to the public. The MLB's [PITCHF/x](http://www.fangraphs.com/library/misc/pitch-fx/) and NBA's [SportVU](http://stats.nba.com/tracking/#!/player/) data are prime examples. At the same time, these sports have sprinted ahead in the analytics race. And this isn't a coincidence. Putting good data in the hands of passionate hobbyists has been a reliable formula for breakthroughs in the history of sports analytics.

> Tennis analysts are still waiting for their SportVU. 

Sadly, tennis associations and federations don't seem to be aware that the sport is being held back by its current model of data sharing. This has left it to individuals outside of the official tour system to tackle the problem with more limited resources. The one person who has done the most to answer this need is Jeff Sackmann, the creator and maintainer of [_TennisAbstract_](http://www.tennisabstract.com) and the [_Heavy Topspin_](http://www.tennisabstract.com/blog/) blog who is leading multiple efforts to put more and better tennis data into the public domain.

One of these efforts is the [Match Charting Project](http://www.tennisabstract.com/blog/2013/11/26/the-match-charting-project/). [Frustrated](http://www.tennisabstract.com/blog/2014/01/03/analytics-that-arent-why-im-not-excited-about-sap-in-tennis/) by the lack of shot-by-shot data on tennis, more than two years ago now, Sackmann established a structured spreadsheet that non-professional scorers could use to chart each point in a tennis match and upload the information to the _TennisAbstract_. 

<div>
    <a href="https://plot.ly/~on-the-t/370/" target="_blank" title="Figure 1. Timeline of Charted Matches" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/370.png" alt="Figure 1. Timeline of Charted Matches" style="max-width: 100%;width: 792px;"  width="792" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:370"  src="https://plot.ly/embed.js" async></script>
</div>


Figure 1 shows the progress of the project so far. Dozens of contributors have gotten involved and 1,100 matches have been charted as of this writing. To help persons who might be interested in using these data for research, I wanted to take a closer look at some of the meta-data of what is available. To find out more about the information collected on each match you can read [here](http://www.tennisabstract.com/blog/2013/11/26/the-match-charting-project/). For R users, I have compiled and processed the data to make it more ready for analysis, which you kind find in the development version of the [deuce](https://github.com/skoval/deuce) package.

The charted matches include both the the men's and women's tours, currently, in fairly equal number (526 for the ATP and 574 for the WTA). Figure 2 shows the breakdown of contributions by contributor. We see that a handful of contributors have been responsible for the majority of the contributions. In fact, 80% of the 1100 matches have been charted by just 5 contributors, and 479 of those by Sackmann. Outside of this group, most contributors are charting few matches (34 contributors have done 2 or fewer matches), which could be an indication that the project is still picking up steam or that the actual charting has a high-cost to entry. 


<div>
    <a href="https://plot.ly/~on-the-t/379/" target="_blank" title="Figure 2. Breakdown of Contributions" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/379.png" alt="Figure 2. Breakdown of Contributions" style="max-width: 100%;width: 408px;"  width="408" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:379"  src="https://plot.ly/embed.js" async></script>
</div>

The fact that the bulk of the contributions to the project have been owing to the efforts of a few persons has pros and cons. On the one hand, it should give us greater assurance that the quality of the scoring for these contributors is high because they have had a lot of experience. On the other hand, because the choice of which matches to chart is ultimately up to the viewing interests of the contributor, there could be some systematic bias in which matches are getting covered. 

To see if there has been any obvious pattern to the selection of matches covered, I first looked more closely at the coverage of matches by month for the ATP from 2013 to the present (Figure 3). This includes all ATP matches at the 250-level or above and excludes the Tour Finals, Davis Cup, and Olympics. The grey line shows the actual number of matches played in the season. The blue lines show the charted matches for different years. The main thing that stands out is the overall lack of coverage. Though there is some indication that the number of charted matches has generally gotten better with each year, we are far from a census. 

<div>
    <a href="https://plot.ly/~on-the-t/386/" target="_blank" title="Figure 3. ATP Charted Matches by Month" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/386.png" alt="Figure 3. ATP Charted Matches by Month" style="max-width: 100%;width: 408px;"  width="408" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:386"  src="https://plot.ly/embed.js" async></script>
</div>

The lack of a census of matches might be okay for some purposes if the sample we have is representative of tour matches. We would be in trouble, for example, if we wanted to research the frequency of tiebreaks and there happened to be an over-representation of matches played by John Isner in the charted sample. The fact that the peakiness of the patterns of charted matches (Figure 3) is not similar to the peakiness of the actual season raises some concern about representativeness. 

<div>
    <a href="https://plot.ly/~on-the-t/391/" target="_blank" title="Figure 4. Coverage of ATP Charted Matches by Tier" style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/391.png" alt="Figure 4. Coverage of ATP Charted Matches by Tier" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:391"  src="https://plot.ly/embed.js" async></script>
</div>


The heatmap in Figure 4 shows the percentage of actual matches covered by tier. The suggested pattern is mostly erratic with respect to tournament level. The percentage of matches at Grand Slams has generally been less than the Masters 1000, with the exception of the Australian Open in 2014. However, this could be owing to the fact that more matches are played at the Slams than Masters and you simply need more manpower to keep up. Among the Masters, there is some suggestion that clay court tournaments are currently over-represented compared to the actual number they make up in the 1000 series. 

_What does this all mean for tennis researchers?_ The main takeaway is that the _Match Charting Project_ is still growing and the current coverage is limited. There is no obvious pattern of selection bias with respect to tier, which is a reassurance, but only begins to scratch the surface of potential causes of match selection. In the meantime, researchers will have to be careful to evaluate whether their particular use of these data depends on having a representative sample of matches.

The metadata on the project still needs a crowd to get behind it, where 1000s of contributors would be involved. The success of Wikipedia suggests that the crowd of contributors is out there but utilizing the crowd needs to have a low-cost of entry. If there were some technical strategies that could make charting more accessible and less burdensome--like having persons chart just a sample of points using a user-friendly interface--it could be a real boon to the effort. Other [human-computing efforts](http://tedxtalks.ted.com/video/TEDxCMU-Luis-von-Ahn-Duolingo-T) have shown that a mass of non-professionals can solve complex problems. So why not for tennis too?

Readers interested in contributing to the _Match Charting Project_ can get started [here](http://www.tennisabstract.com/blog/2013/12/02/match-charting-project-update-tutorial-tracking-tools/). 

Addendum: I did want to note that one tool for helping to get a crowd-sourcing solution to charting is an [Android app](https://play.google.com/store/apps/details?id=com.inklily.tennischarting&hl=en) made by Ink Lily.

---

