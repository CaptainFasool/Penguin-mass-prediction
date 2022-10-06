library(tidyverse)
penguins = read_csv('penguins.csv')
library(GGally)
ggpairs(penguins, aes(colour=sex))

ggplot(penguins, aes(x=bill_depth,y=body_mass)) +
  geom_point() +
  geom_smooth(method=lm, se=FALSE)
model = lm(penguins$body_mass~penguins$bill_depth)
summary(model)

library(ggfortify)
autoplot(model, data=penguins, colour='species')

modelA = lm(penguins$body_mass~penguins$bill_depth)
summary(modelA)

modelB = lm(body_mass~bill_depth+species, data=penguins)
summary(modelB)