dat <- read.csv("data/femaleMiceWeights.csv")

# Load the dplyr package
library(dplyr)

# Call a spreadsheet-style data viewer
View(dat)

#extract the "chow" rows
controls <- filter(dat, Diet=="chow")
View(controls)

# extract just the Bodyweight values from above
controls <- select(controls, Bodyweight)
# convert the controls to vector
unlist(controls)

# Using pipe to pass output of a command to another command
controls <- filter(dat, Diet == "chow") %>% select(Bodyweight) %>% unlist
