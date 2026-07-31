# Read the file femaleMiceweights.csv
dat <- read.csv("data/femaleMiceWeights.csv")

# verify your RNG settings
RNGkind()

#print dat
dat

# print column names
names(dat)

# print the exact name of the column containing the weights.
dat$Bodyweight

# print the entry in the 12th row and second column?
dat[12, 2]

# Use $ to extract the weight column and report the weight of the mouse in the 11th row.
dat$Bodyweight[11]

# Number of mice in the dataset
length(dat$Bodyweight)

# Average weight of the mice with high fat diet
mean(dat$Bodyweight[13:24])

?sample
set.seed(1)
sample(13:24, 1)
dat$Bodyweight[21]
