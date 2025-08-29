---
title: "Homework 3"
output: pdf_document
---




### Fit these four models:

1. $Y \sim 1 + (1 | id)$
2. $Y \sim SES + (1 | id)$
3. $Y \sim SES + (SES || id)$ (independent random effects)
4. $Y \sim SES + (SES | id)$ (dependent random effects)

The last model can be described by this equation:
$$
Y_{ij} = {b_0} + (b_1+\zeta_{1j}) SES_{ij} + \zeta_{0j} + \varepsilon_{ij}
$$

where $\zeta_{0j} \sim N(0,\sigma_{\zeta_0}^2)$, $\zeta_{1j} \sim N(0,\sigma_{\zeta_1}^2)$, with $corr(\zeta_{0j},\zeta_{1j})=\rho_{01}$ but  $\varepsilon_{ij} \sim N(0,\sigma_\varepsilon^2)$ is independent of the other random terms.

The data is in an object named `dat`.



## Question 1: 

### Part a
Report $\hat\sigma^2_{\zeta_0}$ for `model0`, `model1`, `model2` and `model3`. Submit NA if no such parameter exists.




### Part b
Report $\hat\sigma^2_{\zeta_1}$ for `model0`, `model1`, `model2` and `model3`. Submit NA if no such parameter exists.



### Part c
Report $\hat\sigma^2_\epsilon$  for `model0`, `model1`, `model2` and `model3`. Submit NA if no such parameter exists.



## Question 2:
### Part a

Report the estimated correlation $\rho_{01}$ between random intercept and slope for each model. Submit NA if no such parameter exists.



### Part b

TRUE or FALSE 

For model 2, the effect of SES varies across groups indicated by `id` (test $H_0: \sigma^2_{\zeta_1}=0$ with alpha level 0.05)?



### Part c

Comparing `model0` and `model1`, report how much $\sigma^2_\epsilon$ (error variance) was reduced by adding in the additional SES term to the unconditional means model.  Report the magnitude of the difference (subtract 2 numbers).



## Question 3

One of the 4 models you've fit has uncorrelated random slopes while another has correlated random slopes. Compare these two models to test test $H_0: \rho_{01}=0$. Report the p-value. 




