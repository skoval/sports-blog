---
comments: true
date: 2015-10-17T00:00:00Z
title: How Decisive are Break Points?
url: /2015/10/17/how-decisive-are-breakpoints/
---

As part of the work I have been doing on the [Pythagorean model](http://on-the-t.com/2015/09/26/Converting-Clutch-Into-Wins/) for wins in tennis, I have&mdash;in-between MLB playoffs and the Shanghai Masters, in any case&mdash;been thinking a lot about break points lately.

We all know break points are important. If a player doesn't edge out his or her opponent's break points won in a set, the set (and ultimately the match) will have to be decided in a tiebreak or, when a tiebreak isn't in place, a match could go on _ad infinitum_ as some of us thought might happen when big servers [Isner and Mahut butted heads](https://en.wikipedia.org/wiki/Isner%E2%80%93Mahut_match_at_the_2010_Wimbledon_Championships) in the 2010 Wimbledon first round. 

So how _decisive_ are break points for winning in the current game? I suspect most of us (as was true for me when the question first occurred to me) don't know the answer to this question. How odd not to be more familiar with such a fundamental aspect of the game! Another blindspot we can chalk up to tennis stats being stuck in their old ways. Fortunately, a little number-crunching can go far.

One measure of the _decisiveness_ of break points is to look at the frequency with which the player who wins a match is also the player who won more break points. Note that this is an imperfect measure because a match winner doesn't have to win every set and, thus, always edge out the opponent on break point conversion, but it is a good preliminary approximation. 

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID7c61719faa4e () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "250 or 500",
88.12529781,
86.8823741,
89.26500315,
"purple" 
],
[
 "Grand Slams",
90.6378965,
89.16362751,
91.92974771,
"gold" 
],
[
 "Masters",
86.81988022,
85.04222024,
88.41505382,
"blue" 
] 
];
data.addColumn('string','Effect');
data.addColumn('number','Estimate');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'string', role: 'style'});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartID7c61719faa4e() {
var data = gvisDataBarChartID7c61719faa4e();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =    800;
options["legend"] = "none";
options["title"] = "Figure 1. Percentage of ATP Matches where Winner Won More Break Points, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points', baseline: 0};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID7c61719faa4e')
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
callbacks.push(drawChartBarChartID7c61719faa4e);
})();
function displayChartBarChartID7c61719faa4e() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID7c61719faa4e"></script>
 
<!-- divChart -->
  
<div id="BarChartID7c61719faa4e" 
  style="width: 800; height: 800;">
</div>

Figure 1 suggests that 87-88% of wins in best of 3 matches are determined by break point conversion. At the Grand Slams, where men play a best of 5 and there is no tiebreak in the fifth for all but the US Open, the decisiveness of break points is closer to 91%. This tells us that matches are infrequently decided by tiebreaks and matches like Jo-Wilfried Tsonga's upset of Rafael Nadal in this week's semifinal of the Shanghai Masters, despite having [fewer break points won](http://www.atpworldtour.com/en/tournaments/shanghai-rolex-masters/5014/2015/match-stats/T786/N409/live/MS003/match-stats), are rare. 

Are break points more important for some surfaces than others? Figure 2 addresses this question by looking at the differences in the frequency of matches won by the player with the greater number of break points won. The differences are small, but we do see a statistically significant pattern that suggests that break points are more important on slower surfaces that faster surfaces (90% for clay, 88% for hard court, and 87.5% for grass).

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID7c6129662129 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Hard",
88.12529781,
86.8823741,
89.26500315,
"blue" 
],
[
 "Clay",
89.741536,
88.43145035,
90.91849642,
"brown" 
],
[
 "Grass",
87.51018504,
85.3899846,
89.36103772,
"green" 
] 
];
data.addColumn('string','Effect');
data.addColumn('number','Estimate');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'string', role: 'style'});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartID7c6129662129() {
var data = gvisDataBarChartID7c6129662129();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =    800;
options["legend"] = "none";
options["title"] = "Figure 2. Surface Differences in Percentage of ATP Matches where Winner Won More Break Points, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points', baseline: 0};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID7c6129662129')
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
callbacks.push(drawChartBarChartID7c6129662129);
})();
function displayChartBarChartID7c6129662129() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID7c6129662129"></script>
 
<!-- divChart -->
  
<div id="BarChartID7c6129662129" 
  style="width: 800; height: 800;">
</div>

Player differences account for more variation in break point decisiveness than tournament level or surface. Figure 3 gives some idea of this by showing the 20 players who have played 50 or more ATP matches in the past 5 years for whom break points were the most decisive and least decisive for determining match wins. As expected, break points are the least important for wins for big serves, with big guns like John Isner and Ivo Karlovic being the 2nd and 3rd with the lowest break point advantage in matches they have won. At the same time, there are surprises in this group like Gilles Muller and Ryan Harrison. 

Out of all players on tour, Novak Djokovic is the player for whom break points have been most decisive for wins. There does seem to be some correlation with rank as more of the highest-ranked players are in this group. However, it is interesting to see deviations from this trend, like the fairly low rank of Roger Federer and Kei Nishikori in the top 20. These surprises could be a combination of clutch performance and surface-specific dominance (that is, greater dominance on clay court would favor more break point decisiveness; grass less so).

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID98b31ef6dbc6 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Gilles Muller",
73.20548565,
"Decisive Rank:100" 
],
[
 "John Isner",
74.91310545,
"Decisive Rank:99" 
],
[
 "Ivo Karlovic",
77.38918424,
"Decisive Rank:98" 
],
[
 "Ryan Harrison",
81.82587847,
"Decisive Rank:97" 
],
[
 "Joao Sousa",
82.33172552,
"Decisive Rank:96" 
],
[
 "Jarkko Nieminen",
82.72605959,
"Decisive Rank:95" 
],
[
 "Jerzy Janowicz",
83.79620545,
"Decisive Rank:94" 
],
[
 "Steve Johnson",
84.20372859,
"Decisive Rank:93" 
],
[
 "Leonardo Mayer",
84.63463254,
"Decisive Rank:92" 
],
[
 "Jurgen Melzer",
84.74707433,
"Decisive Rank:91" 
],
[
 "Jack Sock",
84.85930566,
"Decisive Rank:90" 
],
[
 "Sam Querrey",
84.86171414,
"Decisive Rank:89" 
],
[
 "Andreas Seppi",
85.44156428,
"Decisive Rank:88" 
],
[
 "Benoit Paire",
85.86582603,
"Decisive Rank:87" 
],
[
 "Lukas Rosol",
85.90702267,
"Decisive Rank:86" 
],
[
 "Mikhail Kukushkin",
85.91475254,
"Decisive Rank:85" 
],
[
 "Ivan Dodig",
86.20514654,
"Decisive Rank:84" 
],
[
 "Kevin Anderson",
86.28695178,
"Decisive Rank:83" 
],
[
 "Marinko Matosevic",
86.34330422,
"Decisive Rank:82" 
],
[
 "Feliciano Lopez",
86.4598861,
"Decisive Rank:81" 
],
[
 "Andy Roddick",
91.17817334,
"Decisive Rank:20" 
],
[
 "Benjamin Becker",
91.20592068,
"Decisive Rank:19" 
],
[
 "Carlos Berlocq",
91.39025682,
"Decisive Rank:18" 
],
[
 "Alexandr Dolgopolov",
91.4199791,
"Decisive Rank:17" 
],
[
 "Janko Tipsarevic",
91.58052243,
"Decisive Rank:16" 
],
[
 "Nikolay Davydenko",
91.78367208,
"Decisive Rank:15" 
],
[
 "Kei Nishikori",
91.88524813,
"Decisive Rank:14" 
],
[
 "Nicolas Mahut",
91.99916575,
"Decisive Rank:13" 
],
[
 "Xavier Malisse",
92.22879854,
"Decisive Rank:12" 
],
[
 "Tommy Haas",
92.30321527,
"Decisive Rank:11" 
],
[
 "Richard Gasquet",
92.31061555,
"Decisive Rank:10" 
],
[
 "Marin Cilic",
92.36580641,
"Decisive Rank:9" 
],
[
 "Roger Federer",
92.87638722,
"Decisive Rank:8" 
],
[
 "Andy Murray",
92.96368681,
"Decisive Rank:7" 
],
[
 "Juan Monaco",
93.17387664,
"Decisive Rank:6" 
],
[
 "Tomas Berdych",
93.22495086,
"Decisive Rank:5" 
],
[
 "David Ferrer",
93.46476266,
"Decisive Rank:4" 
],
[
 "Mardy Fish",
93.47381853,
"Decisive Rank:3" 
],
[
 "Rafael Nadal",
93.91761542,
"Decisive Rank:2" 
],
[
 "Novak Djokovic",
95.53277026,
"Decisive Rank:1" 
] 
];
data.addColumn('string','player');
data.addColumn('number','win_freq');
data.addColumn({type: 'string', role: 'tooltip', 'p': {'html': true}});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartID98b31ef6dbc6() {
var data = gvisDataBarChartID98b31ef6dbc6();
var options = {};
options["allowHtml"] = true;
options["tooltip"] = {isHTML: 'True'};
options["width"] =    800;
options["height"] =   1500;
options["series"] = [{color: 'green'}];
options["legend"] = "none";
options["title"] = "Figure 3. Top 20 Players for Whom Break Points are Least and Most Decisive, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points'};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID98b31ef6dbc6')
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
callbacks.push(drawChartBarChartID98b31ef6dbc6);
})();
function displayChartBarChartID98b31ef6dbc6() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID98b31ef6dbc6"></script>
 
<!-- divChart -->
  
<div id="BarChartID98b31ef6dbc6" 
  style="width: 800; height: 1000;">
</div>

Stay tuned for next week when I'll take a look at break point decisiveness on the women's tour.

