---
comments: true
date: 2018-02-19T00:00:00Z
title: AO to AI Hackathon Winners Announced
categories: ['hackathon', 'data science',]
tags:  ['hackathon', 'data science',]
url: /2018/02/19/ao-hackathon/
thumbnail: "/img/sobel.png"
---

As Roger Federer was crowned with his 20th Grand Slam title at the 2018 Australian Open, the winners of the first AO to AI Hackathon competition were being decided. In this post, I take a look at the winning models and discuss what they mean for the future of calling point outcomes in tennis.

<!--more-->


At the start of the year, as Alex De Minaur was just beginning a glorious pre-AO run that would captivate Australian tennis fans, the Game Insight Group at Tennis Australia launched [a tennis competition](https://ausopen.com/articles/news/wanted-tennis-hackathons-solve-big-data-questions) of their own. This one wouldn't involve a duel of shots. No, it was a competition all about brain power and computing wizardry&mdash;a first-ever hackathon for tennis.


The AO to AI Hackathon, hosted by crowdAnalytix, was the first data science competition for the sport of tennis. Starting on Jan 2, competitors from all over the world were given tracking data from over 10,000 points from matches at the Australian Open to try solve one specific question: build an algorithm to automate how winners, forced errors, and unforced errors are called.


<div style="float:right; padding:1%;">
<img src="/img/sobel.png" width=350 />
<p width=200>Source: Speed and point outcome analysis from Scott Sobel model report</p>
</div>

Not only did the competition give talented data scientists a chance to push the envelope of what machine-learning could do for the sport. It was also the first example of the public release of a large amount of tracking data, which provides positional information about the ball and players throughout a tennis match.

After 3 weeks of competition, the winning models of the hackathon were ready to be determined. But before we get into the top solutions, let's take a closer look at who competed.

## Hackathon Snapshot

A total of 750 joined the competition and submitted a combined total of 2,731 solutions. There were 55 countries represented across the participants. With a total of 223 participants, India was the most represented country by far. In second most represented country was the United States with 78 and Australia was in third with a total of 51 competitors.

<div style="text-align: center;">
<img src="/img/hackathon_map.png" width=500 />
</div>


90% of competitors competed as individuals. The two most popular languages for submitted solutions were written in R or python, R having a slight edge in popularity. 


## Hackathon Winners

The final prize winners were selected based on their performance on an out-of-sample test set and the quality of a submitted report describing their methodological approach. The out-of-sample test set was not available to the competitors, which protects against overfitting and provides the most realistic assessment of how the methods would perform in the real-world.

After assessing the top 5 submissions, the top prize was awarded to Scott Sobel. Sobel, an American data scientist, was able to achieve an overall accuracy of 95% (98% for winners, 89% for forced errors, and 95% for unforced errors). In other words, the automated approach Sobel has built would be expected to agree with court statisticians for 95 of every 100 point outcomes.

Interestingly, several features of the winning solution were common to the top winners. Here were the major commonalities:

- Combining men's and women's data for greater power
- Extensive feature engineering
- Boosting 

Feature engineering was particularly extensive in the Sobel model, with more than 1,000 additional features derived from the supplied set of variables. The model implementation was done in R and used extreme gradient boosting, an approach used by 3 of the 5 top models.

## Future Use

The AO to AI hackathon has resulted in a high-quality tool that could be the first major step toward automating point outcome calls in tennis. It also shows us the potential value of data in tennis and what amazing things can result when spots data is opened up to tennis aficionados with a gift for data analysis.



