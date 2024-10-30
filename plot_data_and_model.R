### Script to plot data and model

# load the data
growth_data <- read.csv("experiment.csv")

# create a function for logistic growth??
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

####why is this not working

# input values for N0, r and K (from our linear models)
N0 <- exp(6.8941709)
r <- 0.0100086
K <- 5.979e+10

# fit this logistic model to our graph
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point()

# we can also fit this to our log-transformed graph
ggplot(aes(t,N), data = growth_data) +
  geom_function(fun=logistic_fun, colour="red") +
  geom_point() + 
  scale_y_continuous(trans='log10')


# make a list of the packages required and save them in a file
sink(file = "package-versions.txt")
sessionInfo()
sink()


