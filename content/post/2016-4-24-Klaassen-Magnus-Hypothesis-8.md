---
comments: true
date: 2016-04-24T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis - Myth 8
url: /2016/04/24/klaassen-magnus-hypothesis-8/
---

The break-heavy clay court season continued in the men's semifinal match where World No. 5 Rafael Nadal faced-off against 31st-ranked Fabio Fognini. There were a total of 8 breaks in the match, 4 in each set. There were also two of the most frustrating of break phenomena, the back-to-back break. The first came in the fifth game of the first set, when Fognini broke Nadal's serve and put himself on the scoreboard for the first time. The second came in the second set, when Fognini once again broke back after losing his first service game. 

<div class="getty embed image" style="float:left;padding:2%;background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:300px;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/523293878" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:148.129676% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/523293878?et=tbOO-HWuQ7h3A4eX3dntHQ&viewMoreLink=on&sig=qHrtqJjJFbTBnNnONlq2kCgIXHpnSvNT-gPLZJK4i8w=&caption=true" width="300" height="445" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>

Back-to-back breaks are rare events&mdash; not as rare as ball boys pummeling walls, but still rare. And there is something exacerbating about them when they do occur because they leave us asking ourselves, how could that have happened? When service holds are the norm, chance tells us that two consecutive breaks is the least likely scenario. The fact that the player who just broke service and achieved the unexpected could lose a position of advantage on their own serve by being immediately broken back, adds even more to our bafflement.

As you can imagine, the perplexing state that back-to-back breaks put us in has generated all kinds of theories about the psychology of elite tennis players. The most common idea being that a break causes the player who broke to mentally relax and the player who was broken to enter a fighting mode. Whatever the details of the idea, the important point is that it predicts that a back-to-back break is actually _more common_ than random chance would predict. 

> But is there any evidence that holding serve is less likely after breaking service than _not_ breaking service?

This brings us to myth 8 of Klaassen and Magnus' 22 myths of tennis.

## Myth 8: "After a break the probability of being broken back increases"

When K&M tested this hypothesis, they first looked at the frequency of points won on serve in games after a break and games that were not after a break. Their choice to focus on points won rather than games won, is a little strange, since the chance of winning the service game would seem to be the main question. However, they do consider what the implied chance is of winning a game based on the point win percentage.

Using this approach and data from [Wimbledon matches in the nineties]((https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#)), they find that the implied chance of holding serve is actually 3.3 percentage points greater after being broken for men and 5.7 percentage points greater for women. The opposite predicted by the break-rebreak theory!

The reason for this is that, without adjusting for the quality of players, the occurrence of a break is highly correlated with the win ability of the serve who just broke. So the simple comparison just won't do. 

K&M correct for this selection bias in a couple ways. One approach compares players according to their seeding (seeded vs seeded, non-seeded vs non-seeded, etc.), in which they find no break-rebreak effect for players in the same seeding category. They also use their point-level "baseline model" that includes player ranking, point importance, and the outcome of the previous point, to test for the influence of a break in the last game on the chance of winning a service point. Again, this is a point-level analysis. And, this time, they find a negative effect for women&mdash; which would support the myth&mdash;and no effect for men.


## Re-examining the Break-Rebreak Phenomenon

The differences in the conclusions with each analysis tells us that the back-to-back break myth is a complicated one. Aside from looking at a more comprehensive group of matches for current players, I think there is something to be gained by looking directly at game rather than point outcomes. As K&M demonstrated, any re-analysis on this topic will have to take care to account for the selection bias that the occurrence of break of service creates. 

In this first analysis, I have taken over 10,000 games from the 2015 ATP and WTA seasons, and looked at the association of holding serve after a break and after no break. The quality of the players in the match is adjusted for in these analyses with the inclusion of the rank difference of the players as a fixed and random effect (the random effect just means that the way in which the rank difference influences a service hold is allowed to be server-specific).


Figure 1 shows the service hold percentages for each tour after a player has earned a break (gold) and after no break (blue). Because we have accounted for quality in the analysis, these can be interpreted as the service hold percentages for a server facing a player of equal quality. We find a 1 percentage point difference for both tour, each suggesting that a service hold is _more likely_ after a break than not. This would lead us to overturn the back-to-back break theory which says that service holds should _decrease_ after a player has achieved a break.

<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataColumnChartID71f3fe74243 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "ATP",
78.7,
72.6,
84.8,
78.7,
80.5,
72.8,
88.2,
80.5 
],
[
 "WTA",
62.8,
57.0,
68.6,
62.8,
64.2,
57.5,
70.9,
64.2 
] 
];
data.addColumn('string','tour');
data.addColumn('number','No Break');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'number', role: 'annotation'});
data.addColumn('number','After Break');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'number', role: 'annotation'});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartColumnChartID71f3fe74243() {
var data = gvisDataColumnChartID71f3fe74243();
var options = {};
options["allowHtml"] = true;
options["width"] =    600;
options["height"] =   800;
options["legend"] = "top";
options["colors"] = ['#1792d0', '#e5952c'];
options["chartArea"] = {width: '80%'};
options["bar"] = {groupWidth: '50%'};
options["vAxis"] = {title: 'Percentage', minValue: 0, maxValue: 100};
options["title"] = "Figure 1. Frequency of Service Holds in 2015 Matches With and Without Breaking in Last Game";


    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartID71f3fe74243')
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
callbacks.push(drawChartColumnChartID71f3fe74243);
})();
function displayChartColumnChartID71f3fe74243() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartID71f3fe74243"></script>
 
<!-- divChart -->
  
<div id="ColumnChartID71f3fe74243" 
  style="width: 600; height: 800; padding:0; margin:0;">
</div>


But perhaps we have not done a good enough job of accounting for player quality (rank isn't a perfect measure of ability, after all). Could there still be some selection bias lurking in the numbers?

As an alternative method to control for the serve and return quality of the opponents without making assumptions about how to best measure player quality, I instead did a matching analysis. This involved taking every occurrence of a game following a service break in the 2015 dataset, and matching them to a game _from the same match_ that did not follow a service break. This is a direct way to control not only for player quality but their quality in the specific match being played.

Figure 2 shows the service hold comparisons for the matched analysis. In this case, the difference for the men persists, with service holds being about 1 percentage point greater after a break than no break. However, for the women's side the effect disappears and there is even some suggestion that the effect reverses, that is, service hold is slightly (about 0.5 percentage point) less likely after a break than after a service hold. 

Although not shown here, I did look to see if these findings changed by surface or with whether breaks in the final game of a set were counted (they were in the above analyses) and these factors did not appear to make a difference for the results of the analyses shown. 

<script type="text/javascript">
 
// jsData 
function gvisDataColumnChartID71f16ce3604 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "ATP",
80.9,
80.1,
81.7,
80.9,
81.8,
81.1,
82.6,
81.8 
],
[
 "WTA",
66.1,
65.0,
67.2,
66.1,
65.5,
64.4,
66.6,
65.5 
] 
];
data.addColumn('string','tour');
data.addColumn('number','No Break');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'number', role: 'annotation'});
data.addColumn('number','After Break');
data.addColumn({id:'i1', type: 'number', role: 'interval'});
data.addColumn({id:'i2', type: 'number', role: 'interval'});
data.addColumn({type: 'number', role: 'annotation'});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartColumnChartID71f16ce3604() {
var data = gvisDataColumnChartID71f16ce3604();
var options = {};
options["allowHtml"] = true;
options["width"] =    600;
options["height"] =   800;
options["legend"] = "top";
options["colors"] = ['#1792d0', '#e5952c'];
options["chartArea"] = {width: '80%'};
options["bar"] = {groupWidth: '50%'};
options["vAxis"] = {title: 'Percentage', minValue: 0, maxValue: 100};
options["title"] = "Figure 2. Matched Sample Frequency of Service Holds in 2015 Matches With and Without Breaking in Last Game";


    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartID71f16ce3604')
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
callbacks.push(drawChartColumnChartID71f16ce3604);
})();
function displayChartColumnChartID71f16ce3604() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartID71f16ce3604"></script>
 
<!-- divChart -->
  
<div id="ColumnChartID71f16ce3604" 
  style="width: 600; height: 800; padding:0; margin:0;">
</div>

## Player Differences

It is important to remember that these are average tendencies, which may or may not be representative of the patterns of any individual player. Taking two players&mdash; Kei Nishikori and Angelique Kerber&mdash;who have been much in the news during the clay court season, makes this point. In 2015, Nishikori won 87% of games after breaking his opponent's serve, while winning 89% after not breaking. Thus, Nishikori appears to go against the general trend of the ATP tour and is more similar to the back-to-back break theory that prompted these analyses. 

Angelique Kerber won 72% of service games after breaking her opponent and 75% after not breaking. In this case, Kerber is more consistent with the general finding for the WTA tour in the matched analysis, though the back-to-back effect is larger in magnitude.

## Summary

Any analysis of back-to-back breaks is vulnerable to selection bias, as better players are the most likely to break service. Because it is difficult to know when we have adequately adjusted for player quality, it is difficult to reach a definitive conclusion. The discrepancies in the findings for the WTA in the above show that the results are sensitive to the method used, even when they each attempt to account for quality. 

Both the regression and matched analysis reached the same result for the ATP and would conclude an opposite psychological effect than the one supposed by the standard break-rebreak theories, as players appear to hold serve more easily after a break. THe findings for the women's side appeared to be less robust, though I would tend to favor the matched analysis, which doesn't rely on ranking as a measure of quality. 

Despite these uncertainties, we can conclude that the average effects are small, the differences being within 1 percentage point across the board. This means that the average effects aren't all that helpful in telling us what is likely to be the case for any individual player, and any assertion about the psychology of elite players that is treated as universally true is probably wrong. 

