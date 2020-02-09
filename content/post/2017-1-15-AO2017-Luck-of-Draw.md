---
comments: true
date: 2017-01-15T00:00:00Z
title: AO 2017 Luck of the Draw
url: /2017/01/15/AO2017-Luck-of-Draw/
---

One of the curious things about tennis is that every seeded player's path to the title is different. When the champions are hoisting a tournament trophy over their heads, we largely ignore the role that luck might have played in their victory. But should it be ignored? And how much of a role does luck play anyway? 

<!--more-->

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:594px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com/detail/631365154" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:66.666667% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/631365154?et=UZlnb2l-R9ZukB_RvU3eAQ&viewMoreLink=on&sig=dSZ1NyyIa7kH1HXO13FgiMYVi7AAyBg8DXTa6z76nOM=&caption=true" width="594" height="396" scrolling="no" frameborder="0" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div><p style="margin:0;"></p></div>


After the release of a tournament draw, there will be a lot of debate about which players got the short end of the stick. However, these are usually based on gut feelings, which we know are often inconsistent with what a more objective analysis shows. Assessing the most likely outcomes of 7 rounds of a 128-size draw is tough calculation for anyone and the perfect place for some number-crunching.

At GIG we have applied our prediction models of the 2017 AO draw to assess the _luck of the draw_ for the top 4 seeds. First, we take the actual draw and simulate many of the most likely ways it will play out according to the current strength of the players. Then we reverse the position of the top 2 seeds and do the same, which is mathematically equivalent to asking what if Andy Murray got Novak Djokovic's quarter? and vice versa? To assess the luck for seeds 3 and 4, we start from the actual draw and change the positions of just those seeds.


### Men's Top 4 Seeds

The chart below summarises how much we expect luck to have an influence for men's singles champion. Had Djokovic drawn Murray's quarter, we estimate that his chances of winning the title would drop by 4 percentage points. Djokovic would still be the strong favorite with either draw but he can thank lady luck for some extra help this year.


<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1053.embed"></iframe>

When I first saw these results, I assumed that the 'bad luck' with Murray's draw was due to Roger Federer landing in his quarter. Is that really the case, though? 

The table below shows Murray's chances of each possible result with the actual draw. In parentheses, I show how much those chances would shift if he had gotten Djokovic's draw. If it is a positive change, it means that an exit at that stage is more likely and, consequently, his most likely opponent in that round is tougher. If the change is negative, it means he is less likely to have difficulty advancing through that round. 

We see that the big roadblock for Murray is the potential quarterfinal. Murray could possibly face Federer there, but in looking at the data it is actually Kei Nishikori who is most likely to challenge him at that stage of the draw and would be a tougher ask than a win over Djokovic's most likely quarterfinal opponent, Dominic Thiem. 


The hurdle for the 3 and 4 seeds comes in the fourth round, where a dangerous Nick Kyrgios is waiting to knock Wawrinka out of the quarter. The on and off court history between those two would make that the marquee R16 match for the event and one that Milos Raonic can be thankful he escaped. 

<script type="text/javascript">
 
// jsData 
function gvisDataTableID1703471bda605 () {
var data = new google.visualization.DataTable();
var datajson =
[
  [
"Novak Djokovic",
"3.04, (-2.17)",
"1.33, (+0.77)",
"4.83, (-2.86)",
"7.21, (-0.57)",
"5.23, (+9.7)",
"8.61, (+0.11)",
"18.34, (-1.42)",
"51.41, (-3.56)"
],
[
"Andy Murray",
"1.43, (-3.54)",
"3.31, (-1.35)",
"3.44, (-3.91)",
"11.18, (-0.12)",
"21.49, (-13.93)",
"10.2, (+0.75)",
"24.41, (+3.27)",
"24.54, (+3.93)"
],
[
"Milos Raonic",
"16.27, (-2.6)",
"17.04, (-3.01)",
"13.87, (-3.65)",
"14.5, (+7.4)",
"14.72, (+1.01)",
"17.44, (-1.25)",
"3.65, (+2.26)",
"2.51, (-0.16)"
],
[
"Stan Wawrinka",
"14.8, (+3.97)",
"15.86, (+3.3)",
"11.86, (+2.81)",
"22.26, (-7.33)",
"14.7, (-0.84)",
"14.55, (-0.7)",
"4.22, (-0.96)",
"1.75, (-0.25)"
]
];
data.addColumn('string','Player');
data.addColumn('string','R128');
data.addColumn('string','R64');
data.addColumn('string','R32');
data.addColumn('string','R16');
data.addColumn('string','QF');
data.addColumn('string','SF');
data.addColumn('string','Finalist');
data.addColumn('string','Winner');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartTableID1703471bda605() {
var data = gvisDataTableID1703471bda605();
var options = {};
options["allowHtml"] = true;
options["width"] = 800;
options["height"] = 400;
options["alternatingRowStyle"] = true;
options["cssClassNames"] = {tableRow: 'large-font', headerRow: '.myTableHeadrow large-font', oddTableRow: '.myTableHeadrow large-font'};


    var chart = new google.visualization.Table(
    document.getElementById('TableID1703471bda605')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "table";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartTableID1703471bda605);
})();
function displayChartTableID1703471bda605() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID1703471bda605"></script>
 
<!-- divChart -->
  
<div id="TableID1703471bda605" 
  style="width: 800; height: 400;">
</div>


### Women's Top 4 Seeds


When we look at the women's draw, we find that the No. 1 seed, Angelique Kerber, also got the comparatively easier half of the draw. If Serena Williams had gotten her half, we estimate that her chances at the title would increase from 35% to 38%. 

On the men's side the differences were largely attributable to a single round. However, for the top 2 seeds on the women's side both the second round and quarterfinal contribute the most to making Williams' draw that much tougher. She is most likely to meet Lucie Safarova in the second and Johanna Konta in the quarterfinal. 


<iframe width="900" height="800" frameborder="0" scrolling="no" src="https://plot.ly/~on-the-t/1051.embed"></iframe>


The quarters of Halep and Radwanska are the most mixed. Halep has a tough potential R16 against Venus Williams but would avoid a possible semifinal match up with Venus's sister. Radwanska on, the other hand, should have a doable R16, where she is most likely to meet Elina Vesnina, but will most probably have to pull off back-to-back wins over Karolina Pliskova and Serena Williams to even have a chance at the title. 


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataTableID17034228b7285 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
"Serena Williams",
"9.41, (-1.16)",
"7.52, (-4.19)",
"4.64, (+2.28)",
"8.13, (-0.53)",
"13.56, (-3.85)",
"11.36, (+2.89)",
"10.75, (+1.28)",
"34.63, (+3.28)"
],
[
"Angelique Kerber",
"16.62, (+0.71)",
"5.6, (+7.44)",
"11.14, (-3.42)",
"12, (+0.03)",
"13.46, (2.69)",
"14.9, (-3.66)",
"13.38, (-2.18)",
"12.9, (-1.61)"
],
[
"Simona Halep",
"9.48, (+4.46)",
"8.26, (+0.36)",
"14.91, (-2.08)",
"16.57, (-5.16)",
"16.87, (+0.78)",
"13.21, (+6.69)",
"11.14, (-4.84)",
"9.56, (-0.21)"
],
[
"Agnieszka Radwanska",
"17.05, (-6.51)",
"9.36, (+0.26)",
"14.15, (+0.97)",
"11.59, (+6.01)",
"16.92, (+1.15)",
"17.67, (-5.81)",
"6.04, (+3.61)",
"7.22, (+0.32)"
] 
];
data.addColumn('string','Player');
data.addColumn('string','R128');
data.addColumn('string','R64');
data.addColumn('string','R32');
data.addColumn('string','R16');
data.addColumn('string','QF');
data.addColumn('string','SF');
data.addColumn('string','Finalist');
data.addColumn('string','Winner');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartTableID17034228b7285() {
var data = gvisDataTableID17034228b7285();
var options = {};
options["allowHtml"] = true;
options["width"] = 800;
options["height"] = 400;
options["alternatingRowStyle"] = true;
options["cssClassNames"] = {tableRow: 'large-font', headerRow: '.wsTablerow large-font', oddTableRow: '.wsTablerow large-font'};


    var chart = new google.visualization.Table(
    document.getElementById('TableID17034228b7285')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "table";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartTableID17034228b7285);
})();
function displayChartTableID17034228b7285() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID17034228b7285"></script>
 
<!-- divChart -->
  
<div id="TableID17034228b7285" 
  style="width: 800; height: 400;">
</div>


