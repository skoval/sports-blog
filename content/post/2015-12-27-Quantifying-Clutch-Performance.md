---
comments: true
date: 2015-12-27T00:00:00Z
title: Quantifying Clutch Performance
url: /2015/12/27/Quantifying-Clutch-Performance/
---

Just as some people are unusually good at finding the perfect gift to put under the Christmas tree, some tennis players are unusually good at pulling out a win when it matters most. This is the quintessential characteristic of the "clutch player". 

<!--more-->


<div style="float:right;padding:2%;width:400px;height:250px;">
<a href="https://twitter.com/Tennis/status/680863246937620480/photo/1?ref_src=twsrc%5Etfw"><img src="/assets/shot_heard_round_world.png" width="90%" height="75%"/></a><p style="font-size:11px;">Novak Djokovic's shocking service return winner facing a match point at the US Open Final in 2011</p></div>

The idea of the clutch player is easy to describe, and some notion of clutch performance exists in every sport. Actually measuring clutch ability is much more challenging. And, in tennis, when one starts to consider how this could be done, one quickly discoveries that, despite how frequently the concept of clutch is discussed and applied with authority, it is rather vague. 

In reviewing some proposed metrics for <a href="http://www.tennisabstract.com/blog/category/clutch/">clutch performance</a>, I have found that they have generally focused on one point type at a time (e.g. break points) and one side of the game at a time, either serve or return. This approach has the upside of acknowledging that some points are more critical than others. But it has the drawback of discounting that criticality is a continuum and points that are critical, even if not <i>the most</i> critical, can still tell us something about how a player performs under pressure. Imagine if surgeons were judged only on the skill of their incisions. We would probably be missing a lot of the picture, no?

A more complete assessment of clutch ability should include all points played in a match but count the points played under greater pressure more heavily than less critical ones. Effectively, we want to isolate the part of a point that was really important and separate that from what was just average. If this could be done, we could then compare how much more a player is likely to win than lose when it matters most.

Thinking over these features, I realized that the hypothetical metric being described is something like <i>importance plus-minus</i> (IPM). An IPM could be calculated with the following formula, 

$$
IPM = \frac{ \sum Imp\;\times Won - Imp\;\times (1 - Won) }{ (Total\; Points) }
$$

Here, $Imp$ is the importance of the point played and $Won$ is an indicator of whether the point was won ($Won = 1$) or lost ($Won = 0$). The difference between points won and lost is averaged over all points played. In the version shown here, points on serve and return are counted equally. One could also imagine variants of this that were specific to the service or return game or weighed one side of the game more heavily than the other.

<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID5f1d6722274a () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Novak Djokovic [1]",
46.6 
],
[
 "Kei Nishikori [8]",
35.36 
],
[
 "Roger Federer [3]",
33.15 
],
[
 "Andy Murray [2]",
31.71 
],
[
 "Rajeev Ram [89]",
31.16 
],
[
 "Richard Gasquet [9]",
28.75 
],
[
 "David Ferrer [7]",
28.57 
],
[
 "Stan Wawrinka [4]",
27.27 
],
[
 "Tomas Berdych [6]",
27.21 
],
[
 "Rafael Nadal [5]",
24.05 
],
[
 "Gael Monfils [24]",
22.39 
],
[
 "Milos Raonic [14]",
21.91 
],
[
 "Jack Sock [26]",
20.44 
],
[
 "Bernard Tomic [18]",
20.32 
],
[
 "John Isner [11]",
19.67 
],
[
 "Gilles Simon [15]",
17.95 
],
[
 "Nick Kyrgios [30]",
17.19 
],
[
 "Kevin Anderson [12]",
16.89 
],
[
 "Nicolas Mahut [71]",
14.56 
],
[
 "Pablo Cuevas [40]",
13.89 
] 
];
data.addColumn('string','player_rank');
data.addColumn('number','Overall IPM');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartID5f1d6722274a() {
var data = gvisDataBarChartID5f1d6722274a();
var options = {};
options["allowHtml"] = true;
options["height"] =   1000;
options["width"] =    600;
options["chartArea"] = {left: 200};
options["legend.position"] = "none";
options["hAxis"] = {title: 'IPM (per 100 Points)'};
options["colors"] = ['#00BCD4'];
options["title"] = "Figure 1. Top 20 ATP Players in Overall Importance Plus Minus";


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID5f1d6722274a')
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
callbacks.push(drawChartBarChartID5f1d6722274a);
})();
function displayChartBarChartID5f1d6722274a() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID5f1d6722274a"></script>
 
<!-- divChart -->
  
<div id="BarChartID5f1d6722274a" 
  style="width: 600; height: 1000;">
</div>

How should point importance in the IPM be determined? [Carl Morris](http://statistics.fas.harvard.edu/people/carl-n-morris), Emeritus Professor of Statistics at Harvard University, has a paper in which he proposes a mathematical definition for the _importance_ of a point, defining it as the expected change in a player's chance of winning the match if the current point is won compared to when it is lost. Importance, using this definition, is always a positive number between 0 and 1.

As measures of clutch performance that focus on one point type have sometimes produced curious results&mdash;lower ranked players being in the top 10 of "clutch" performance, for example&mdash;I was interested in seeing the relationship between player rank and the $IPM$. Using point-level data for the 2015 ATP season, I calculated the IPM for all points, service points, and return points. 

Figure 1 shows the players who ranked in the top 20 on the overall IPM, ordered from highest IPM to lowest. Here, the IPM is the percentage of importance won minus lost for every 100 points played. The World No. 1, Novak Djokovic, ends up at the top of the group by a large margin, +46.6 IPM in 2015 compared to the next highest IPM of +35.4. Fourteen of the players ranked in the top 20 on IPM are also in the top 20 in ATP ranking. Differences in IPM and ATP rank order are intriguing. Nishikori appears second in 2015, despite just making the cut for the Tour Finals. We also see several players outside of the top 20, some who are top-notch but struggle with consistency, like Gael Monfils, and others who have big service games, like Nick Kyrgios and Nicolas Mahut. 


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID5f1d5c10a246 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Novak Djokovic",
83.28,
21.23 
],
[
 "Kei Nishikori",
48.02,
31.37 
],
[
 "Roger Federer",
37.67,
47.66 
],
[
 "Andy Murray",
74.89,
-0.98 
],
[
 "Rajeev Ram",
-54.49,
104.16 
],
[
 "Richard Gasquet",
37.76,
24.34 
],
[
 "David Ferrer",
77.8,
-10.74 
],
[
 "Stan Wawrinka",
23.64,
33.87 
],
[
 "Tomas Berdych",
45.08,
17.71 
],
[
 "Rafael Nadal",
60.64,
-0.87 
],
[
 "Gael Monfils",
16.65,
31.22 
],
[
 "Milos Raonic",
-54.56,
101.61 
],
[
 "Jack Sock",
-8.71,
43.95 
],
[
 "Bernard Tomic",
-10.96,
41.24 
],
[
 "John Isner",
-82.95,
131.52 
],
[
 "Gilles Simon",
71.77,
-32.99 
],
[
 "Nick Kyrgios",
-31.31,
62.78 
],
[
 "Kevin Anderson",
5.73,
36.35 
],
[
 "Nicolas Mahut",
33.24,
-0.32 
],
[
 "Pablo Cuevas",
39.89,
-12.07 
] 
];
data.addColumn('string','player');
data.addColumn('number','Return');
data.addColumn('number','Serve');
data.addRows(datajson);
return(data);
}
 

// jsDrawChart
function drawChartBarChartID5f1d5c10a246() {
var data = gvisDataBarChartID5f1d5c10a246();
var options = {};
options["allowHtml"] = true;
options["height"] =   1000;
options["width"] =    600;
options["chartArea"] = {left: 200};
options["legend.position"] = "none";
options["hAxis"] = {title: 'IPM (per 100 Points)'};
options["colors"] = ['#4CAF50', '#FFC107'];
options["title"] = "Figure 2. Return and Serve Importance Plus Minus Over Average for Top 20 ATP Players in Overall IPM";


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID5f1d5c10a246')
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
callbacks.push(drawChartBarChartID5f1d5c10a246);
})();
function displayChartBarChartID5f1d5c10a246() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID5f1d5c10a246"></script>
 
<!-- divChart -->
  
<div id="BarChartID5f1d5c10a246" 
  style="width: 600; height: 1000;">
</div>

To try to gain some insight into the overall performance, we can look separately at the IPM on the service and return games. Keeping the same order of players as determined by their overall performance, Figure 2 shows the clutch ability of the return (green) and serve (gold). Because all players have a negative IPM on the return, I have centered both the serve and return metrics to the average among the top 100, so they represent the IPM above average. 

The breakdown in Figure 2 shows some players who are fairly even in their relative clutch ability (Nishikori, Federer, Wawrinka) and others who are more imbalanced. The big servers, John Isner and Milos Raonic, are the standouts in the imbalanced group, performing much better than average on important points on serve but much power than average on return. Though less extreme, it is interesting to note the greater edge Djokovic is one of the few players who is unusually stronger in clutch situations as a defender than as a server (though he is above average in both).  

The are a few things that could influence some of the surprises in this list of clutch performers. First, we have not accounted for some of the IPM averages being based on fewer total points for players with fewer matches. This could explain why Rajeev Ram has an otherwise unaccountably high clutch rank: he had only a handful of matches at the 250-level or higher in 2015. A second possible flaw in the IPM as presented here is that it doesn't account for the strength of the opponents faced. A point won at the same state of the match is treated as the same whether it is played against the number 1 player on tour or the 101th player. 

Still, the number of top players in the clutch A-list shown here provides some face validity for the IPM and suggests its potential as a global assessment of player point-level effectiveness. 

