packages <- c("tidyverse", "lavaan")

librarian::shelf(packages)

#### Data Prep ####
set.seed(111)

dat <- data.frame(x = runif(100), group = rep(letters[1:2], each = 50))

dat$y <- dat$x + runif(100)

dat$z <- dat$y + runif(100)

#### Specify Free Model ####
multigroup.model <- c('y~x', 'z~y')

mgp.free <- sem(multigroup.model, dat, group = "group")

summary(mgp.free)

#### Specify Constrained Model ####
mgp.constrained <- sem(multigroup.model, dat, group = "group", group.equal = c("intercepts", "regressions"))

summary(mgp.constrained)

#### Compare the two models using Chi-Sq ####
anova(mgp.free, mgp.constrained)
