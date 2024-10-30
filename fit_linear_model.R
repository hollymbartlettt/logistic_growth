### Script to estimate the model parameters using a linear approximation

# install and load dplyr package
library(dplyr)

# load the data
growth_data <- read.csv("experiment.csv")


## Case 1. K >> N0, t is small

# filter for t<2000 - this is when K>>N0?
data_subset1 <- growth_data %>% filter(t<1500) %>% mutate(N_log = log(N))

# create a linear model for this first section of the graph
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)


## Case 2. N(t) = K

# filter for t>2000 - this is when N(t)=K
data_subset2 <- growth_data %>% filter(t>2000)

# create a linear model for this section of the graph
model2 <- lm(N ~ 1, data_subset2)
summary(model2)
