---
comments: true
date: 2018-04-01T12:00:00Z
title: The Evolution of Del Potro's Backhand
categories: ['Del Potro', 'backhand', 'gaussian process',]
tags:  ['Del Potro', 'backhand', 'gaussian process',]
url: /2018/04/01/delpotro-backhand/
thumbnail: "/img/del_potro_bh.png"
---

In this guest blog, [Martin Ingram](@xenophar) analyses the dramatic trends in the backhand of La Torre de Tandil using Gaussian processes. 

<!--more-->

With two wins and a semi-final in Acapulco, Indian Wells and Miami, it seems that Juan Martin Del Potro is finally back as a major contender on tour. After his win in Indian Wells, I was intrigued by a comment made by his opponent, Roger Federer:

> “But what’s interesting is that he put himself out there with no double-hander almost, but just happy to slice and still take losses, I guess, you know, because he knew it was going to probably not be enough against some players, but he was happy enough playing this way, which I admire a lot.

<div class="getty embed image" style="background-color:#fff;display:inline-block;font-family:Roboto,sans-serif;color:#a7a7a7;font-size:11px;width:100%;max-width:274px;float:right;padding:2%;"><div style="padding:0;margin:0;text-align:left;"><a href="http://www.gettyimages.com.au/detail/932928436" target="_blank" style="color:#a7a7a7;text-decoration:none;font-weight:normal !important;border:none;display:inline-block;">Embed from Getty Images</a></div><div style="overflow:hidden;position:relative;height:0;padding:125.31645% 0 0 0;width:100%;"><iframe src="//embed.gettyimages.com/embed/932928436?et=deQIvvF9QTV7Kr7AF3uFSQ&tld=com.au&sig=vH89TVCEQrR8Z1DC28tSWSvgr_rkdoyebNuBgdu5qzA=&caption=true&ver=1" scrolling="no" frameborder="0" width="474" height="594" style="display:inline-block;position:absolute;top:0;left:0;width:100%;height:100%;margin:0;"></iframe></div></div>

Federer is pointing out that back when Del Potro returned in 2016, it was clear that he was hitting far more single-handed backhand slices than he had in the past. This made me wonder: just how much did his shot selection change, and is he back to his original self? In this post, I take a look at data from the excellent [Match Charting Project](http://www.tennisabstract.com/charting/meta.html) to look at Del Potro's backhand over time and try to answer these questions.

Thankfully, the Match Charting Project makes this analysis quite easy. One of the summaries provided is a breakdown of "Shot Types". For instance, as we can see in [the page for the final](http://www.tennisabstract.com/charting/20180318-M-Indian_Wells_Masters-F-Roger_Federer-Juan_Martin_Del_Potro.html), Del Potro hit 172 backhands in the match ("Backhand side"), of which 52 were slices ("BH slice/chip"), so in this match, Del Potro sliced 30.2% of his backhands.

The Match Charting Project github data only has data for Del Potro until the Basel Final in 2017. I added his four charted matches from the 2018 season manually.

<div>
<img src="/img/Juan Martin Del Potro_scatter.png" width=600 />
</div>

The plot above shows a graph of this fraction over time. There appears to be a discontinuity at the start of 2014, after which Del Potro suddenly started slicing his backhand far more often than he previously did. I associated the sliced backhand with his return in 2016, so this was a bit of a surprise to me, but according to the Match Charting Project, he already sliced his backhand a great deal during his win in Sydney 2014.



Has he started hitting his backhand more like in the past? To try to say something about that, I decided to fit a Gaussian Process to this data. The Gaussian Process assumes that there is a smooth change over time, and attempts to find the long-term trend in the data. It may not be the ideal model in this case, since we are dealing with count data and injuries may lead to abrupt changes, but it provides a reasonable fit:

<div>
<img src="/img/Juan Martin Del Potro_vanilla_gp.png" width=600 />
</div>


Initially, I only added Del Potro's Indian Wells data manually, and the GP appeared to show a slight downturn in 2018. However, his Acapulco matches change that picture. In Acapulco, Del Potro sliced 65% of his backhands against Alexander Zverev, and 64% against Anderson. In Indian Wells, on the other hand, he sliced only 30% against Federer, as discussed before. It seems that Del Potro still hits far more slices on average, although there is a great deal of variation from match to match.

Even this latest fraction of 30.2% is still higher than any of the fractions before 2014 (the highest was his 2012 Davis Cup match against Ivo Karlovic where he sliced 23.9% of his backhands). Overall, it looks as though Del Potro is still playing his backhand very differently from the pre-2014 days, but that may not be a bad thing: perhaps his game is now more complete than it was, and the slice adds to his game. After all, he won both the matches against Anderson and Zverev handily, even when slicing almost two out of three backhands. In addition, the relatively low percentage against Federer suggests that he can reduce the slices if he feels he needs to.

This analysis is limited: the Match Charting Project only has a small subset of Del Potro's matches, which may be biased towards important matches and in other less obvious ways. Nevertheless, it is interesting to see Del Potro's clear change on the backhand in 2014. It will be fascinating to observe how Del Potro will approach his backhand in the future and whether he can continue his winning ways.

<br>

Authored by [Martin Ingram](@xenophar). 
