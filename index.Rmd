---
title       : Outlier Detection
subtitle    : Random Data Distributions
author      : "Travis May"
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What does it do?

This simple application generates a random sample of numbers, the quantity and distribution of which as determined by the user, and then the application detects any outliers that are present. Finally, the results, with the outliers highlighted, are presented in a simple graphical plot.

---

## How does it work?

1. User chooses the type of distribution
2. User inputs the number of observations
3. Press the submit button!

--- .class #id 

## On the backend:<small>server.ui</small>

<code>

    dist <- input$dist
    n <- input$n

    outlierScores <- lofactor(data(), k = n/10)
    outliers <- order(outlierScores, decreasing=T)[1:5]

    col <- rep("black", n)
    col[outliers] <- "red"
    plot(data(),
          main=paste('r', dist, '(', n, ')', sep=''), pch = 19, col = col)

</code>

---

## Why?

This proves that an application can simply detect and highlight outliers, perhaps in order for the user to remove them later.

--- bg:url('assets/img/screen.png')


--- 

## Thank you




