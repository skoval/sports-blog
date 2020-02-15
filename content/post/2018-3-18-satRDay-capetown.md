---
comments: true
date: 2018-03-18T00:00:00Z
title: Cape Town celebrates R and tennis data science at satRday
categories: ['R', 'data science',]
tags: ['R', 'data science',]
url: /2018/03/16/satrday-capetown/
thumbnail: "/img/satrday-logo.png"
---


While Roger Federer earned his 17th straight win of 2018, tennis data science was taking a center stage at Cape Town's satRday conference. 

<!--more-->

Opportunities to dig into the 'mechanics' of being a data scientist in the tennis industry are rare. I was lucky to have a chance to do just that this saturday thanks to [Andrew Collier](https://www.linkedin.com/in/datawookie/) (@DataWookie) and his colleagues who organized the 2018 [satRday Cape Town](https://capetown2018.satrdays.org/) conference. 

In it's second run in Cape Town, the 2018 satRday included a one-day line-up of R developers and enthusiasts talking about exciting ways they are using and extending the language. Of the 23 speakers, 20 are currently working in South Africa, and it was exciting to see the ways they are applying and contributing to the language.

As one of the speakers, I was able to share how I am using R for real-time tennis analytics at the Game Insight Group. There was also a workshop prior to the conference where I got my hands dirty with participants interested in tools for sports data science, showing them some of the ways they can collect, wrangle, and model sports data more effectively in R. All of the workshop and keynote materials are available on [github](https://github.com/skoval/satRday).

Although the conference was open to any R topic, it was exciting to see a number of presentations that were highly relevant to sport. [Neil Watson](https://za.linkedin.com/in/neil-watson-77295124/) (@rugbystatsguy), a Lecturer at the University of Cape Town, showed us how he is using R to analyze and visualize momentum in Rugby Union. 


<div style="float:right;padding:2%;">
<img src="/img/satrday - 16.png" width=300 />
<p width=200>Caption: Neil Watson's momentum heatmaps</p>
</div>

[Sean Soutar](https://www.linkedin.com/in/sean-soutar-2b5643a2/), a student at the University of Cape Town, showed how we can use docker and RSelenium to scrape dynamic data from the Web, a set of tools I use quite frequently for gathering tennis data. 

[Robert Bennetto](https://www.linkedin.com/in/robert-bennetto-za/) extolled the benefits of `sp` for working with spatial data, which could be an especially useful resource for deriving spatial metrics in sport. [Peter Kamerman's](https://www.linkedin.com/in/kamermanpr/) entertaining talk on `purrr` convinced me that I should be using `map` and `pmap` more for my attempts at functional programming in R. I was also very appreciative to [David Lubinsky](https://www.linkedin.com/in/david-lubinsky-422419/), who closed the talks of the day, for giving such a helpful tour of `profvis`, Winston Chang's tool for profiling code in R, that will be a huge help for identifying bottlenecks in code going forward.


<div style="float:left;padding:2%;">
<img src="/img/satrday - 12.png" width=300 />
<p width=200>Caption: Peter Kamerman's purrr examples</p>
</div>

In addition to these take aways for stats computing in sport, I was thrilled to see the amazing work R-ladies are doing for the R community. Two deserve particular praise. One is [Wiebke Toussaint](https://www.linkedin.com/in/wiebketoussaint/), who, with truly boundless energy, shared with us how she is using `ckanR` to make data in energy research available to the world through an open data portal.


<div style="float:left;padding:2%;">
<img src="/img/satrday - 8.png" width=300 />
<p width=200>Caption: Ma&euml;lle!</p>
</div>

But it was [Ma&euml;lle Salmon](http://www.masalmon.eu/) who gave the kick-off keynote of the day a set such an engaging and exciting tone for the program. Ma&euml;lle is a Research Software Engineer at [rOpenSci](https://ropensci.org/blog/2018/01/29/rse-ma%C3%ABlle-salmon/), where she is working with a team dedicated to making package development in R a more collaborative, fast, and joyful experience. In [her talk](https://t.co/OOPepRT2G3), she showed how rOpenSci is helping developers make better software, and she sprinkled a lot of `magick` on top along the way. It was truly the highlight of the event.









