---
title: "Irene Hsueh's BS 728 Homework 4"
author: "Irene Hsueh"
date: "11/30/2021"
output:
  pdf_document: default
  html_document: default
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


```{r}
#Creating Dataset 
source1 <- c(1,1,1,1, 0,0,0)
source2 <- c(1,0,1,0, 1,0,1)
source3 <- c(1,1,0,0, 1,1,0)
count <- c(0, 3, 8, 13, 1, 8, 3)
spina_bifida <- as.data.frame(cbind(source1, source2, source3, count))


#Log-Linear Model of Independence 
model_independent <- glm(count ~ source1 + source2 + source3, data=spina_bifida, family="poisson")
summary(model_independent)

intercept_independent <- exp(coef(model_independent)[1])
total_independent <- intercept_independent + sum(count)


#Log-Linear Model with Interactions 
model_interaction <- glm(count ~ source1 + source2 + source3 + source1*source2 + source2*source3, data=spina_bifida, family="poisson")
summary(model_interaction)

intercept_interaction <- exp(coef(model_interaction)[1])
total_interaction <- intercept_interaction + sum(count)
```
















