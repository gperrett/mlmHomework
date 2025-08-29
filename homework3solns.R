## ----setup, include = FALSE-------------------------------------------------------------------------------------
#library(learnr)
knitr::opts_chunk$set(echo = TRUE)

# load necessary libraries
if(!require(dplyr)) install.packages(dplyr)
library(dplyr)
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
if(!require(lme4)) install.packages("lme4")
library(lme4)
if(!require(lmerTest)) install.packages("lmerTest")
library(lmerTest)
library(mlmHomework)
generate_data_hw3(netid = '2') # replace with your netid inside quotes
# generate_data(netid = 'gp77') correct example
# generate_data(netid = gp77) this will not work


## ---------------------------------------------------------------------------------------------------------------
model0 <- lmer(Y~1+(1|id),data=dat) 
model1 <- lmer(Y~SES+(1|id),data=dat) 
model2 <- lmer(Y~SES+(SES||id),data=dat)
model3 <- lmer(Y~SES+(SES|id),data=dat)


## ---------------------------------------------------------------------------------------------------------------
as.data.frame(VarCorr(model0))
as.data.frame(VarCorr(model1))
as.data.frame(VarCorr(model2))
as.data.frame(VarCorr(model3))

answer_hw3_1a(model0 = 0.98, model1 = 1.03, model2 = 1.09, model3 = 1.09)



## ---------------------------------------------------------------------------------------------------------------
answer_hw3_1b(model0 = NA, model1 = NA, model2 = 3.36 , model3 = 3.36 )



## ---------------------------------------------------------------------------------------------------------------
answer_hw3_1c(model0 = 7.89, model1 = 4.44, model2 = 1, model3 = 1)



## ---------------------------------------------------------------------------------------------------------------
answer_hw3_2a(model0 = NA, model1 = NA, model2 = NA, model3 = -0.64)



## ---------------------------------------------------------------------------------------------------------------
anova(model1,model2,refit=F)
rand(model2) #alternative - read lines carefully
answer_hw3_2b(TRUE)


## ---------------------------------------------------------------------------------------------------------------
answer_hw3_2c(7.89 - 4.44)


## ---------------------------------------------------------------------------------------------------------------
anova(model2,model3,refit=F)
answer_hw3_3(7.62e-13)

