load("data/skew.RData")
dim(dat)

par(mfrow = c(3,3))
for (i in 1:9) {
  qqnorm(dat[, i])
}

par(mfrow = c(1, 1))
hist(dat[, 4])
hist(dat[, 9])