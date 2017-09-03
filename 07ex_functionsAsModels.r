#UT foundations of data analysis 1
install.packages("~/Downloads/SDSFoundations/MD5", repos = NULL)
?install.packages
library(tidyverse)

# Functions as models exercises -------------------------------------------

#Example A
TimeSec <- c(0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24)
HeightCm <- c(50, 42.5, 35.7, 29.5, 23.8, 18.8, 14.3, 10.5, 7.2, 4.6, 2.5, 1.1, 0.2)
WaterCyl <- data.frame(TimeSec, HeightCm)
plot(WaterCyl)
HeightbyTime <- lm(HeightCm ~ TimeSec, data = WaterCyl)
summary(HeightbyTime)
predict(HeightbyTime, data.frame(TimeSec = c(5, 13)))

plot(WaterCyl)
abline(HeightbyTime)


#attempt to fit the function derived in the exercise
#HeightbyTimeQuad <- function(x) {
#   0.075(x)^2 - 3.87(x) + 50
# }
#lapply(TimeSec, HeightbyTimeQuad)
#abline(lapply(WaterCyl, HeightbyTimeQuad))

## We conclude that a quadratic function represents the situation more
## accurately than a linear function. However, for high water levels the linear
##  function is an equally good representation.


#review question

fishGrowth <- data.frame(Generation = c(0, 4, 8, 12, 16, 20, 24, 28),
                         Number_Thou = c(2, 15, 75, 343, 1139, 1864, 1990, 1999))
plot(fishGrowth)
#looks like logistic might fit bests

