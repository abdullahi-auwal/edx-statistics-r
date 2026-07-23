# Read the file
dat <- read.csv("data/msleep_ggplot2.csv")
# which class
class(dat)
# view it
View(dat)

# extract primates rows
primates <- filter(dat, order == "Primates")
#view it
View(primates)
# Find number of primates
nrow(primates)
class(primates)

# extract sleep_total of the primates
sleep_total <- select(primates, sleep_total)
class(sleep_total)

# convert it to a vector so i can calculate mean
vect_sleep <- unlist(sleep_total)
# finding mean
mean(vect_sleep)
# summarize and filter to do the above
filter(dat, order == "Primates") %>% summarise(sleep_mean = mean(sleep_total))