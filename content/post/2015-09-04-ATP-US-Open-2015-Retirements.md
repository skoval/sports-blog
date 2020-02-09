---
comments: true
date: 2015-09-04T00:00:00Z
title: Retirements Aren't Only About Standing the Heat
url: /2015/09/04/ATP-US-Open-2015-Retirements/
---

Heat was the main topic of discussion on Day 4 of the US Open. The brutal effects of sweltering temperatures and stifling humidity took centerstage during the afternoon play when American Jack Sock collapsed in the third set of his match against Ruben Bemelmans. Sock--who looked unconscious as the medical team on site rushed to his aid--was forced to retire and was subsequently diagnosed with [heat illness](https://www.washingtonpost.com/news/early-lead/wp/2015/09/03/american-tennis-player-jack-sock-collapses-on-court-at-u-s-open/).

<!--more-->

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:198px;float:right;padding: 1%;"><div style="overflow:hidden;position:relative;height:0;padding:150.000000% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/486374152?et=17mpygVHQq5Wwev-HMNE_Q&viewMoreLink=on&sig=8Imw3OpwTbfVi23qfxR6E9vms1uZ1I6y5_Ea9jTf5is=" width="198" height="297" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/486374152" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div></div>

Sock's [prognosis is good](http://www.usatoday.com/story/sports/tennis/2015/09/03/american-jack-sock-becomes-13th-player-retire-us-open/71654162/) but that must be little consolation to a top competitor who was up two sets and had to quit because he was unlucky enough to get a 12:30 match time. Athletic competition isn't a _real_ contest if luck has too much of a role. This is what makes penalty shoot-outs in association football so frustrating. 


Tournament directors could throw up their hands and say it's the weather's fault, but weather isn't the only issue. Retirements and walkovers--the most readily available proxies of player fatigue or injury that we have for most matches--have been on the rise. From 1991 (the first years of the ATP World Tour) to 2014, the expected number of retirements or walkovers has increased from 4.4 to 6.9, which corresponds to a 5% probability of a retirement or walkover at today's Grand Slams (Figure 1). 

<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataScatterChartID68b4ccdbb15 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 1991,
6 
],
[
 1992,
7 
],
[
 1993,
7 
],
[
 1994,
4 
],
[
 1995,
4 
],
[
 1996,
4 
],
[
 1997,
6 
],
[
 1998,
7 
],
[
 1999,
7 
],
[
 2000,
3 
],
[
 2001,
3 
],
[
 2002,
10 
],
[
 2003,
5 
],
[
 2004,
7 
],
[
 2005,
4 
],
[
 2006,
2 
],
[
 2007,
8 
],
[
 2008,
6 
],
[
 2009,
4 
],
[
 2010,
8 
],
[
 2011,
11 
],
[
 2012,
4 
],
[
 2013,
5 
],
[
 2014,
10 
] 
];
data.addColumn('number','year');
data.addColumn('number','Retirements');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartScatterChartID68b4ccdbb15() {
var data = gvisDataScatterChartID68b4ccdbb15();
var options = {};
options["allowHtml"] = true;
options["width"] =    720;
options["height"] =    560;
options["trendlines"] = {0:{type: 'exponential'}, 1: {}};
options["hAxis"] = {format: '####', title: 'Year', minValue : 1990, maxValue: 2014, 
			ticks: [1990, 1992, 1994, 1996, 1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014]};
options["vAxis"] = {title: 'Total'};
options["title"] = "Figure 1. ATP Retirements and Walkovers, US Open 1990 - 2014";
options["pointSize"] =     20;
options["series"] = [{color:'#FFC107'}, {color: '#00BCD4'}];
options["legend"] = "none";


    var chart = new google.visualization.ScatterChart(
    document.getElementById('ScatterChartID68b4ccdbb15')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartScatterChartID68b4ccdbb15);
})();
function displayChartScatterChartID68b4ccdbb15() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartScatterChartID68b4ccdbb15"></script>
 
<!-- divChart -->
  
<div id="ScatterChartID68b4ccdbb15" 
  style="width: 720; height: 560;">
</div>

These are average, of course. Figure 1 shows that the data on retirement is quite noisy and, like the overall average, shows some evidence of getting noisier over time. So, although, there has been a systematic upward shift over time, the expected retirements and walkovers in any given year could be much higher or lower from the mean shown by the trend line in Figure 1. Since 2000, 3 years at the US Open (2002, 2011, and 2014) have had 10 or more retirements or walkovers. The increasing volatility combined with the rise in expected retirements and walkovers make this pattern even _more_ of a concern. 

_What could be the cause of the upward trend in retirements and walkovers?_ Clearly weather conditions and player fitness have an important role, but--unless climate change has been particularly cruel to Flushing Meadows in September--improvements in player fitness would predict retirements and walkovers to have dropped over the course of the modern era. The fact that we observe the opposite suggests that there is more to the picture. 

<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataScatterChartID68b56b58717 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 1999,
0,
0 
],
[
 2000,
-4,
-4.40512334 
],
[
 2001,
-4,
-1.864800759 
],
[
 2002,
3,
5.070889894 
],
[
 2003,
-2,
2.426711668 
],
[
 2004,
0,
3.96127451 
],
[
 2005,
-3,
7.296030607 
],
[
 2006,
-5,
-0.3590588235 
],
[
 2007,
1,
7.598703888 
],
[
 2008,
-1,
10.46864366 
],
[
 2009,
-3,
7.661884266 
],
[
 2010,
1,
12.01680672 
],
[
 2011,
4,
13.19776876 
],
[
 2012,
-3,
23.44237207 
],
[
 2013,
-2,
14.13982642 
],
[
 2014,
3,
7.711915535 
] 
];
data.addColumn('number','year');
data.addColumn('number','Retirements');
data.addColumn('number','Minutes');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartScatterChartID68b56b58717() {
var data = gvisDataScatterChartID68b56b58717();
var options = {};
options["allowHtml"] = true;
options["width"] =    720;
options["height"] =    560;
options["trendlines"] = {0:{type: 'exponential'}, 1: {type : 'exponential'}};
options["hAxis"] = {format: '####', title: 'Year', minValue : 1998, maxValue: 2014, 
			ticks: [1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014]};
options["vAxis"] = {title: 'Difference from 1999'};
options["pointSize"] =     20;
options["series"] = [{color:'#FFC107'}, {color: '#00BCD4'}];
options["title"] = "Figure 2. Change in ATP Average Match Duration and Retirements/Walkovers, US Open 1999 - 2014";


    var chart = new google.visualization.ScatterChart(
    document.getElementById('ScatterChartID68b56b58717')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartScatterChartID68b56b58717);
})();
function displayChartScatterChartID68b56b58717() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartScatterChartID68b56b58717"></script>
 
<!-- divChart -->
  
<div id="ScatterChartID68b56b58717" 
  style="width: 720; height: 560;">
</div>

One striking parallel with the pattern in retirement and walkovers is the dramatic increase in match lengths on the ATP Tour. Figure 2 compares the average match time for completed matches at the US Open to the average in 1999, when public data on match duration was first regularly collected ([Source: Jeff Sackmann](https://github.com/JeffSackmann/tennis_atp)). Over 15 years, the average match length has increased by 15 minutes. For the players that make it to the finals, that increase corresponds to nearly 2 extra hours of total match time in the tournament--no wonder god-like fitness like [Novak Djokovic's](http://espn.go.com/tennis/story/_/id/8132800/has-novak-djokovic-become-fittest-athlete-ever-espn-magazine) is needed to be at the top of today's game.

The similarity in the rising trends in match duration and the frequency of retirement/walkovers suggests that retirements and walkovers might not be totally random. The modern baseline game is simply more physically demanding than the quicker-paced play of 15 or 20 years ago, and the additional wear and tear this implies has consequences. Yet tournaments have done very little that would suggest they recognize these trends. The US Open has arguably done more to curb these trends than the other Slams by introducing the 5th set tiebreak and moving the men's final to [Monday](http://www.tennis.com/pro-game/2012/12/us-open-mens-final-moved-monday-2013/45691/#.VenDuOlUJmg).  But, Sock's dramatic exit yesterday and 12 retirements overall before the Round of 16, are frustrating reminders that these efforts haven't gone far enough. 



