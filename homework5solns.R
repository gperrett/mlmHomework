## ----setup, include = FALSE-------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

# load necessary libraries
library(mlmHomework)
library(lmerTest)
library(lme4)



## ---------------------------------------------------------------------------------------------------------------
# load data
generate_data_hw5('2') # replace with your netId


## ---------------------------------------------------------------------------------------------------------------
model0 <- lmer(lwage~1+(1|nr),data=wagepan)
model1 <- lmer(lwage~exper+educ+(1|nr),data=wagepan)
model2 <- lmer(lwage~exper+expersq+educ+(1|nr),data=wagepan)
model3 <- lmer(lwage~exper+expersq+educ+(exper||nr),data=wagepan)
model4 <- lmer(lwage~exper+expersq+educ+(exper|nr),data=wagepan)


## ---------------------------------------------------------------------------------------------------------------
anova(model0,model1)
answer_hw5_1a(2.2e-16)


## ---------------------------------------------------------------------------------------------------------------
anova(model1,model2)
answer_hw5_1b(1.435e-10)


## ---------------------------------------------------------------------------------------------------------------
rand(model3) #several alternatives exist; be careful about REML/ML
answer_hw5_2(1.31e-13)


## ---------------------------------------------------------------------------------------------------------------
anova(model3,model4,refit=F)  #be careful about REML/ML (rand answers a different question here)
answer_hw5_3(9.273e-15)


## ---------------------------------------------------------------------------------------------------------------
as.data.frame(VarCorr(model4))
vB.m4 <- function(exper) {0.195154666+exper^2*0.002513207+2*exper*(-0.013402983)}
EXPER=seq(0,18,by=1)
vb.exper.m4 <- vB.m4(EXPER)
answer_hw5_4(vb.exper.m4)


## ---------------------------------------------------------------------------------------------------------------
as.data.frame(VarCorr(model3))
vB.m3 <- function(exper) {0.1042299241+exper^2*0.0009408886}
EXPER=seq(0,18,by=1)
vb.exper.m3 <- vB.m3(EXPER)
answer_hw5_5(vb.exper.m3)


## ---------------------------------------------------------------------------------------------------------------
as.data.frame(VarCorr(model2))
vB.m2 <- function(exper) {0.1231045+0*exper^2} #the latter term just makes the response a vector
EXPER=seq(0,18,by=1)
vb.exper.m2 <- vB.m2(EXPER)
answer_hw5_6(vb.exper.m2)


## ---------------------------------------------------------------------------------------------------------------
answer_hw5_7a(FALSE)


## ---------------------------------------------------------------------------------------------------------------
answer_hw5_7b(TRUE)

