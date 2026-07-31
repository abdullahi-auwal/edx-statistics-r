dat <- read.csv("data/femaleMiceWeights.csv")

View(dat)
controls <- filter(dat, Diet == "chow")
controls <- select(controls, Bodyweight)
unlist(controls)
