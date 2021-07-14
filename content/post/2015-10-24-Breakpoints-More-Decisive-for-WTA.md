---
comments: true
date: 2015-10-24T00:00:00Z
title: Break Points are More Decisive for WTA
url: /2015/10/24/breakpoints-more-decisive-for-wta/
---

Last week I [openly admitted](http://on-the-t.com/2015/10/17/How-Decisive-Are-Breakpoints/) to a new obsession with break points, which has lead me down a path of investigations to try to understand the role of break points for winning in tennis. One product to come out of this is the concept of break point _decisiveness_, which I define as the percentage of matches in which the winner also won more break points than the loser. My last post showed that break point decisiveness ranges from 87 to 91% for the ATP, depending on which surface and match format (best of 3 or best of 5) is being played. In this post, I turn to the WTA to see if break points have a similar link to wins as they do for ATP. 

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:297px;float:right;padding:2;"><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/487047784?et=sQft_xZAS_57H8l7QwcQQA&viewMoreLink=off&sig=-2aNzL-h2hbm02e9KXAR962a-MkDkEzoBm24k9Yve7U=" width="297" height="198" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;"></iframe></div><p style="margin:0;"></p><div style="padding:0;margin:0 0 0 10px;text-align:left;"><a href="http://www.gettyimages.com/detail/487047784" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">View image</a> | <a href="http://www.gettyimages.com" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">gettyimages.com</a></div><figcaption>Mona Barthel defeated Stefanie Voegele in today's Luxembourg Open semifinal, winning 4 break points to Voegele's 1 and advancing to a final against Misaki Doi.</figcaption></div>

Since 2011, the frequency that the winner of a match also had an edge in break point conversion ranged from 91-93% for the WTA (Figure 1). The decisiveness for break points was highest at Grand Slams but all of the frequencies by tier are within their error ranges, so there isn't strong evidence that break point decisiveness differ by tier. 

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID11d2248bf513 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "International (Hard)",
92.11901911,
91.05505099,
93.06606951,
"#E1BEE7" 
],
[
 "Grand Slams",
93.05871248,
91.58214595,
94.29241768,
"#CE93D8" 
],
[
 "Premier",
90.77436853,
89.17663317,
92.15699103,
"#BA68C8" 
],
[
 "Premier Mandatory",
91.31855294,
89.3000199,
92.98620136,
"#9C27B0" 
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
function drawChartBarChartID11d2248bf513() {
var data = gvisDataBarChartID11d2248bf513();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =    800;
options["legend"] = "none";
options["title"] = "Figure 1. Percentage of  WTA Matches where Winner Won More Break Points, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points', baseline: 0};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID11d2248bf513')
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
callbacks.push(drawChartBarChartID11d2248bf513);
})();
function displayChartBarChartID11d2248bf513() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID11d2248bf513"></script>
 
<!-- divChart -->
  
<div id="BarChartID11d2248bf513" 
  style="width: 800; height: 800;">
</div>


_Are there differences by surface?_ The frequency of a break point edge was also between 91 and 92% for all surfaces (Figure 2). This contrasts with what was observed for the ATP, where it was found that break points are slightly more decisive on slower surfaces. 

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID11d26086c523 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Hard",
92.11901911,
91.05505099,
93.06606951,
"#E1BEE7" 
],
[
 "Clay",
92.14674243,
90.87208143,
93.25661326,
"#EF5350" 
],
[
 "Grass",
90.86146026,
88.76183523,
92.60150937,
"#4CAF50" 
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
function drawChartBarChartID11d26086c523() {
var data = gvisDataBarChartID11d26086c523();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =    800;
options["legend"] = "none";
options["title"] = "Figure 2. Surface Differences in Percentage of WTA Matches where Winner Won More Break Points, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points', baseline: 0};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID11d26086c523')
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
callbacks.push(drawChartBarChartID11d26086c523);
})();
function displayChartBarChartID11d26086c523() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID11d26086c523"></script>
 
<!-- divChart -->
  
<div id="BarChartID11d26086c523" 
  style="width: 800; height: 800;">
</div>


Other differences between the ATP and WTA are also notable. In particular, regardless of surface, the decisiveness of break points is 3-4 percentage points _greater_ for the WTA than the ATP (Figure 3). The flipside of what this tells us is that, compared to the ATP, it is more rare for a player on the WTA to win a match based on tiebreak performance or to come back from a set down in which the opponent had more of an edge in break point conversion than the match winner had in the sets she won. 

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID11d22ff8ae57 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Hard",
92.11901911,
91.05505099,
93.06606951,
"#E1BEE7",
"WTA",
88.12529781,
86.8823741,
89.26500315,
"purple",
"ATP" 
],
[
 "Clay",
92.14674243,
90.87208143,
93.25661326,
"#EF5350",
"WTA",
89.741536,
88.43145035,
90.91849642,
"brown",
"ATP" 
],
[
 "Grass",
90.86146026,
88.76183523,
92.60150937,
"#4CAF50",
"WTA",
87.51018504,
85.3899846,
89.36103772,
"green",
"ATP" 
] 
];
data.addColumn('string','Effect');
data.addColumn('number','Estimate');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'string', role: 'style'});
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number','ATP');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'string', role: 'style'});
data.addColumn({type: 'string', role: 'annotation'});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartID11d22ff8ae57() {
var data = gvisDataBarChartID11d22ff8ae57();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =    800;
options["legend"] = "none";
options["title"] = "Figure 3. Surface Differences in WTA and ATP Break Point Decisiveness, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points', baseline: 0};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID11d22ff8ae57')
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
callbacks.push(drawChartBarChartID11d22ff8ae57);
})();
function displayChartBarChartID11d22ff8ae57() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID11d22ff8ae57"></script>
 
<!-- divChart -->
  
<div id="BarChartID11d22ff8ae57" 
  style="width: 800; height: 800;">
</div>


When we look at the bottom 20 and top 20 players with respect to break point decisiveness, we find several surprising things (Figure 4). First, although more of the top players are among the group for whom break points are the most decisive, we do find one Grand Slam champion (Francesca Schiavone) and two finalists (Dominika Cibulkova, Vera Zvonareva) in bottom group. Also, the rankings in the top group do not exactly align with WTA rankings. Most notably, Caroline Wozniacki, who has had a break point conversion edge on 95.3% of the matches she has won, is the top of the list and slice maven Monica Niculescu is fifth, with a decisiveness frequency of 94.1%. 

<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID11d26f7dea5b () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Jie Zheng",
88.56214789,
"Decisive Rank:100" 
],
[
 "Kirsten Flipkens",
89.42624042,
"Decisive Rank:99" 
],
[
 "Klara Koukalova",
89.69880844,
"Decisive Rank:98" 
],
[
 "Francesca Schiavone",
89.70423621,
"Decisive Rank:97" 
],
[
 "Shahar Peer",
89.70951898,
"Decisive Rank:96" 
],
[
 "Julia Goerges",
90.0718682,
"Decisive Rank:95" 
],
[
 "Dominika Cibulkova",
90.40416921,
"Decisive Rank:94" 
],
[
 "Irina Camelia Begu",
90.40994817,
"Decisive Rank:93" 
],
[
 "Kaia Kanepi",
90.44978439,
"Decisive Rank:92" 
],
[
 "Anastasia Pavlyuchenkova",
90.48036063,
"Decisive Rank:91" 
],
[
 "Carla Suarez Navarro",
90.55499006,
"Decisive Rank:90" 
],
[
 "Sloane Stephens",
90.572862,
"Decisive Rank:89" 
],
[
 "Camila Giorgi",
90.61153536,
"Decisive Rank:88" 
],
[
 "Caroline Garcia",
90.80257634,
"Decisive Rank:87" 
],
[
 "Lauren Davis",
90.83960145,
"Decisive Rank:86" 
],
[
 "Petra Cetkovska",
90.96803587,
"Decisive Rank:85" 
],
[
 "Daniela Hantuchova",
91.09357466,
"Decisive Rank:84" 
],
[
 "Yaroslava Shvedova",
91.24970532,
"Decisive Rank:83" 
],
[
 "Marina Erakovic",
91.31496292,
"Decisive Rank:82" 
],
[
 "Bojana Jovanovski",
91.33120232,
"Decisive Rank:81" 
],
[
 "Vera Zvonareva",
93.25741069,
"Decisive Rank:20" 
],
[
 "Roberta Vinci",
93.31777048,
"Decisive Rank:19" 
],
[
 "Tsvetana Pironkova",
93.38632507,
"Decisive Rank:18" 
],
[
 "Marion Bartoli",
93.4082024,
"Decisive Rank:17" 
],
[
 "Sorana Cirstea",
93.51400712,
"Decisive Rank:16" 
],
[
 "Elina Svitolina",
93.61893546,
"Decisive Rank:15" 
],
[
 "Simona Halep",
93.66838264,
"Decisive Rank:14" 
],
[
 "Belinda Bencic",
93.71724644,
"Decisive Rank:13" 
],
[
 "Flavia Pennetta",
93.80470357,
"Decisive Rank:12" 
],
[
 "Maria Sharapova",
93.82047684,
"Decisive Rank:11" 
],
[
 "Jelena Jankovic",
93.84354048,
"Decisive Rank:10" 
],
[
 "Ana Ivanovic",
93.91849792,
"Decisive Rank:9" 
],
[
 "Ekaterina Makarova",
93.95217916,
"Decisive Rank:8" 
],
[
 "Na Li",
94.01487737,
"Decisive Rank:7" 
],
[
 "Agnieszka Radwanska",
94.0623085,
"Decisive Rank:6" 
],
[
 "Monica Niculescu",
94.11329242,
"Decisive Rank:5" 
],
[
 "Sara Errani",
94.13920417,
"Decisive Rank:4" 
],
[
 "Victoria Azarenka",
94.23677726,
"Decisive Rank:3" 
],
[
 "Serena Williams",
95.02293641,
"Decisive Rank:2" 
],
[
 "Caroline Wozniacki",
95.35206788,
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
function drawChartBarChartID11d26f7dea5b() {
var data = gvisDataBarChartID11d26f7dea5b();
var options = {};
options["allowHtml"] = true;
options["tooltip"] = {isHTML: 'True'};
options["width"] =    800;
options["height"] =   1500;
options["chartArea"] =  {width: '50%'};
options["series"] = [{color: 'purple'}];
options["legend"] = "none";
options["title"] = "Figure 4. Top 20 Players for Whom Break Points are Least and Most Decisive, 2011 - 2015";
options["hAxis"] = {title: 'Percentage of Matches Won on Break Points'};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID11d26f7dea5b')
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
callbacks.push(drawChartBarChartID11d26f7dea5b);
})();
function displayChartBarChartID11d26f7dea5b() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID11d26f7dea5b"></script>
 
<!-- divChart -->
  
<div id="BarChartID11d26f7dea5b" 
  style="width: 800; height: 1000;">
</div>



Given that Wozniacki is generally regarded as one of the [more consistent players](http://www.telegraph.co.uk/sport/tennis/wtatour/8049085/Caroline-Wozniackis-consistency-elevates-her-to-the-top-of-the-womens-rankings.html) on the WTA tour, the rankings shown in Figure 4 suggest that break point decisiveness might provide some insights into consistency of play in matches a player has won, where a higher decisiveness than average would suggest more dominance in play outside of tiebreaks. Breakdowns of break point dominance by set are harder to come by for both tours but is the kind of data that would be needed to better interpret break point decisiveness and what it can tell us about a player's consistency.


