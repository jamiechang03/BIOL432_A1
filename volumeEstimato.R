Data=read.csv("measurements.csv") # loads data
library(dplyr) # loads required package

# adding volume column:

Data = Data %>%
  mutate(Volume = round(3.14*(Limb_Width)^2*(Limb_Length),digits=2)) # calculates volume of leg, based on volume of cylinder
  
# overwriting previous data in measurements.csv:

write.csv(Data, "measurements.csv", row.names = F) # exports data frame to a csv file called measurements.csv
  