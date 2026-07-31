head(InsectSprays)

boxplot(split(InsectSprays$count, InsectSprays$spray))
boxplot(count ~ spray, data = InsectSprays)

##-------------------
library(dplyr)
data(nym.2002, package = "UsingR")

head(nym.2002)
boxplot(time ~ gender, data = nym.2002)

par(mfrow = (c(1,2)))
hist(nym.2002$time[nym.2002$gender == "Male"])
hist(nym.2002$time[nym.2002$gender == "Female"])
