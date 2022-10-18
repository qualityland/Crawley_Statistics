# The Right Kind of Statistical Analysis
# depends on:
#   - response variable (y-axis, ordinate)
#   - explanatory variables (x-axis, abscissa)

## These simple keys will then lead you to the appropriate statistical method:

# The explanatory variables:
# a) All explanatory variables continuous: Regression
# b) All explanatory variables categorical: Analysis of variance (ANOVA)
# c) Some explanatory variables continuous some categorical: Analysis of covariance (ANCOVA)

# The response variable:
# a) Continuous: Regression, ANOVA or ANCOVA
# b) Proportion: Logistic regression
# c) Count: Log linear models
# d) Binary: Binary logistic analysis
# e) Time at death: Survival analysis

# Error type I - reject the null hypothesis when it is TRUE
# Error type II - accept the null hypothesis when it is FALSE


# How many repetitions, given power of 80% (p.10)
power.t.test(delta = 2, sd = 2.8, power = 0.8)

# Shuffle the treatments of three sets of flour beetles exposed to 
# different contact insecticites deployed on petri dishes (p.29)
treatments <- c("aloprin", "vitex", "formixin", "panto", "allclear")
treatments
# treatments for petri dishes 1-5
sample(treatments)
# treatments for petri dishes 6-10
sample(treatments)
# treatments for petri dishes 11-15
sample(treatments)

# attach to use variable names directly (bad practice!)
first.frame <- read.csv("data/test.pollute.csv")
second.frame <- read.csv("data/ozone.data.csv")

attach(first.frame)
temp[1]

attach(second.frame)
temp[1]

attach(first.frame)
detach(first.frame)
attach(second.frame)
