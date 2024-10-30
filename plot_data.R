### Script to plot the logistic growth data

# load the data
growth_data <- read.csv("experiment.csv")

# install and load ggplot package
install.packages("ggplot2")
library(ggplot2)

# plot cell count against time
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time (min)") +
  
  ylab("N (# cells)") +
  
  theme_bw()

# plot log-transformed cell count against time
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time (min)") +
  
  ylab("N (# cells) - log transformed") +
  
  scale_y_continuous(trans='log10')
