---
comments: true
date: 2016-07-16T00:00:00Z
title: Klaassen & Magnus's 22 Myths of Tennis&mdash; Myth 19
url: /2016/07/16/Klaassen-Magnus-Hypothesis-19/
---

The 2016 Wimbledon Championships brought us a number of stories and memorable matches. But, with the third round exit of Novak Djokovic, we _didn't_ get to see a semifinal between Djokovic and Federer. We will have to wait a few more weeks for the arrival of the US Open for the next opportunity to see if Federer can still test Djokovic on a slam stage.

<div style="float: left; padding:2%;"><img src="/assets/usopen_ms_final.png" ></div>

Any one with an interest in numbers will especially want to see a rematch of the 2015 US Open men's final. Federer and Djokovic's title-deciding match on Arthur Ashe last year was one of the most statistically unusual matches we have seen in the latter stages of a slam in recent years. Most of us remember that Federer lost in four sets and was woeful on break point conversions (converting just 4 of 23 break point chances to be exact). But did you know that Federer actually won a higher percentage of total points on serve and return? 



<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBarChartID17b5f742cf8 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Total Points Won",
50.34246575,
50,
49.65753425,
50 
],
[
 "Serve Points Won",
61.29032258,
61,
62.04379562,
62 
],
[
 "Return Points Won",
37.95620438,
38,
38.70967742,
39 
] 
];
data.addColumn('string','labels');
data.addColumn('number','Djokovic');
data.addColumn({type: 'number', role: 'annotation'});
data.addColumn('number','Federer');
data.addColumn({type: 'number', role: 'annotation'});
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBarChartID17b5f742cf8() {
var data = gvisDataBarChartID17b5f742cf8();
var options = {};
options["allowHtml"] = true;
options["width"] =    800;
options["height"] =   1000;
options["legend"] = "top";
options["colors"] = ['#1792d0', '#e5952c'];
options["chartArea"] = {width: '50%'};
options["bar"] = {groupWidth: '50%'};
options["title"] = "Match Summary For 2015 US Open Final";
options["hAxis"] = {title: 'Percentage of Points Won'};


    var chart = new google.visualization.BarChart(
    document.getElementById('BarChartID17b5f742cf8')
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
callbacks.push(drawChartBarChartID17b5f742cf8);
})();
function displayChartBarChartID17b5f742cf8() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBarChartID17b5f742cf8"></script>
 
<!-- divChart -->
  
<div id="BarChartID17b5f742cf8" 
  style="width: 600; height: 800; margin:0%; padding:0%;">
</div>

As you can see from Figure 1 the differences were small, slightly less than one percentage point in each case. Still, they make the point of how simple averaging in tennis too often glosses over the real story. The 2015 US Open men's final was a stark example of the standard stats missing the effect of _point importance_. Federer and Djokovic weren't equally effective on all points but were instead handling big points differently (drastically so at times) than less critical points. It is exactly this situation where conventional stats can be misleading.

The 2015 US Open final stands out in our memory as match where Federer seemed surprisingly affected by the pressure of big point situations. Watching it happen, I think most fans felt it was uncharacteristic of the Swiss champion. We come to expect champions to handle the toughest game situations better than other players. _But is that actually a skill that defines a champion?_

This question brings us to Klaassen and Magnus's next tennis myth. 

## Myth 19 "Real champions win the big points"

In revisiting the [myths of K&M](https://global.oup.com/academic/product/analyzing-wimbledon-9780199355952?cc=us&lang=en&#), we have already had a number of analyses that have shown that players perform differently under pressure in a variety of ways (see [Myth 17](http://on-the-t.com/2016/07/02/Klaassen-Magnus-Hypothesis-17/), for example). The (somewhat) new point that K&M make when thinking about how the best players react to big points is to argue that better players also do better in critical situations because worse players do worse. Thus, they argue, champions are defined by their stability in performance while other players tend to cave when the match is on the line.

If K&M are right, we would expect to see the smallest effects of big points for players with the highest overall performance on serve and return. In Figure 1, I have used a mixed model to estimate how a player's serve and return ability changes in break point situations based on several years of grand slams. On serve (on the y-axis), players are fighting off a possible break; on return (on the x-axis), they are fighting to convert. Negative values in either direction would indicate a drop in performance on break points compared to all other points.

The colors group players by their average win percentage on serve and return, summing the two to get an overall level of "win ability". The green dots are the strongest players. We can see that there is a lot of variance among them in how they are affected on serve. Nadal, Nishikori, and Robredo are much more effective at saving points in a break point situation compared to other service points. Yet, Djokovic, Federer, and Murray's effectiveness on serve is virtually unaffected when facing a break point. The one common characteristic among the top players is being more effective on return when they have a chance to break.  

<div>
    <a href="https://plot.ly/~on-the-t/853/" target="_blank" title="90-96, 97-98, 99-100, 101-103, 104-120, , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/853.png" alt="90-96, 97-98, 99-100, 101-103, 104-120, , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:853"  src="https://plot.ly/embed.js" async></script>
</div>


In the weakest group (in blue), we find the same variance on serve and more negative effects on serve. In contrast with K&M's argument, it the players that are in the middle of the pack that have the smallest break point effects.

WTA players show much more of a pattern in the influence of break points than was observed for the ATP (Figure 2). We see that the player's overall strength at winning points is almost perfectly correlated with how they are affected by break point opportunities on the return game. The best players are the most negatively affected and the weakest players are the most positively affected. This counter-intuitive result could be explained by the model having difficulty separating a player's baseline return ability from the influence of break points.

<div>
    <a href="https://plot.ly/~on-the-t/855/" target="_blank" title="90-96, 97-98, 99-100, 101-103, 104-120, , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/855.png" alt="90-96, 97-98, 99-100, 101-103, 104-120, , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:855"  src="https://plot.ly/embed.js" async></script>
</div>


Focusing on break points ignores many other point situations that can also be critical to the outcome, like tiebreak points or 30-all points toward the end of the set. To take a more comprehensive look at player quality and "big point" effects, I repeated the above analyses using point importance, as defined by Carl Morris.

When the importance of all points is considered, we now find a pattern more similar to what was found for the WTA on break points. The top players tend to raise their game on the most important service points but perform under their ability on the most critical return points. 

<div>
    <a href="https://plot.ly/~on-the-t/857/" target="_blank" title="90-96, 97-98, 99-100, 101-103, 104-120, , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/857.png" alt="90-96, 97-98, 99-100, 101-103, 104-120, , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:857"  src="https://plot.ly/embed.js" async></script>
</div>

The pattern for the WTA is more variability when importance is considered. Top players still tend to perform below their average on the return and above their average on serve (Figure 4).  Serena Williams is an interesting exception, however. She is in the middle of the point cloud as one of the top players who is least affected by the importance of the point.

<div>
    <a href="https://plot.ly/~on-the-t/859/" target="_blank" title="90-96, 97-98, 99-100, 101-103, 104-120, , " style="display: block; text-align: center;"><img src="https://plot.ly/~on-the-t/859.png" alt="90-96, 97-98, 99-100, 101-103, 104-120, , " style="max-width: 100%;width: 800px;"  width="800" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="on-the-t:859"  src="https://plot.ly/embed.js" async></script>
</div>

## Summary

In revisiting, K&M's myth 19 I have looked at how a player's response to tough serve and return points is related to their overall ability to win points. The analyses show that the best players are also some of the most affected by some pressure situations. Yet the picture looks a bit different depending on how one defines a "big point". 

Why might we see such differences when looking at break points versus important points? The reality is that not all break points are necessarily that important. If a player is two sets down, facing another break point might not have much hope of shifting the match win probability. On the other hand, tiebreak points are not considered in the break point analyses though these are some of the most important point in a match. It is because of situations like these that we can't expect the two definitions of "big points" to give consistent results.

K&M use player ranking to define a "real champion". In the above, I have looked at point win ability. Though each of these attributes lead to interesting results, neither of these are particularly satisfying ways of characterising a champion. So the last word on this topic still remains to be said.

