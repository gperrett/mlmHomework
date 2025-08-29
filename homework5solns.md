---
title: "Homework 5"
output: pdf_document
---




## HOMEWORK 5

For this assignment, we use an NLSY extract known as `wagepan` consisting of 8 years of wages for male workers in their 20s (approximately). The outcome variable will be `lwage` - the logged hourly wage (in ~1980 dollars). The only predictors that we will use are `exper` (years of experience), `expersq` (the square of exper), `educ` (years of education). The unique id is `nr`.


To load your *unique* version of the `wagepan` data run the function below with your netID as the argument. 




### Fit these five models:

1. `model0`: $lwage \sim 1 + (1 | nr)$ (UMM)
2. `model1`: $lwage \sim exper + educ + (1 | nr)$ 
3. `model2`: $lwage \sim exper + expersq + educ + (1 | nr)$ (nonlinear fixed effects)
4. `model3`: $lwage \sim exper + expersq + educ + (exper || nr)$ (indep. random effects)
5. `model4`: $lwage \sim exper + expersq + educ + (exper | nr)$ (dependent random effects)

The last model can be described by this equation:
$$
LNWAGE_{ti} = {b_0} + (b_1+\zeta_{1i}) EXPER_{ti} + b_2 EXPERSQ_{ti} \\ 
  + b_3 EDUC_{ti} + \zeta_{0i} + \varepsilon_{ti}
$$

where $\zeta_{0i} \sim N(0,\sigma_{\zeta_0}^2)$, $\zeta_{1i} \sim N(0,\sigma_{\zeta_1}^2)$, with $corr(\zeta_{0i},\zeta_{1i})=\rho_{01}$ but  $\varepsilon_{ti} \sim N(0,\sigma_\varepsilon^2)$ is independent of the other random terms.



## Question 1: 

### part a
Evaluate (compute p-value) the need for additional fixed effects (as a block, if more than one) as we move from `model0` to `model1`. Hint: you may have to refit, implicitly or explicitly. 



### part b
Evaluate (compute p-value) the need for additional fixed effects (as a block, if more than one) as we move from `model1` to `model2`. Hint: you may have to refit, implicitly or explicitly. 



## Question 2
Evaluate (compute p-value) the need for the additional *random* effect as we move from `model2` to `model3`.




## Question 3
Evaluate (compute p-value) the need for the additional correlation term in the *random* effects as we move from `model3` to `model4`.  




## Question 4
Based on `model4`, and using the formula $Var(aX+bY)=a^2Var(X)+b^2Var(Y)+2abCov(X,Y)$ and the fact that $Cov(X,Y)=\sqrt{Var(X)Var(Y)}Corr(X,Y)$, estimate the variance between subjects (V_B) for EXPER on a grid: EXPER=seq(0,18,by=1). Submit a length 19 vector as your answer.



## Question 5
Based on `model3`, and using the formula $Var(aX+bY)=a^2Var(X)+b^2Var(Y)+2abCov(X,Y)$ and the fact that $Cov(X,Y)=\sqrt{Var(X)Var(Y)}Corr(X,Y)$, estimate the variance between subjects (V_B) for EXPER on a grid: EXPER=seq(0,18,by=1). Submit a length 19 vector as your answer.



## Question 6
Based on `model2`, and using the formula $Var(aX+bY)=a^2Var(X)+b^2Var(Y)+2abCov(X,Y)$ and the fact that $Cov(X,Y)=\sqrt{Var(X)Var(Y)}Corr(X,Y)$, estimate the variance between subjects (V_B) for EXPER on a grid: EXPER=seq(0,18,by=1). Submit a length 19 vector as your answer.



## Question 7

### part a

TRUE or FALSE
For `Model 4` (question 4), and across the range of `EXPER` evaluated, between subject variance *always* increases as EXPER increases. 



### part b

TRUE or FALSE
For `Model 3` (question 5), and across the range of `EXPER` evaluated, between subject variance *always* increases as EXPER increases. 


