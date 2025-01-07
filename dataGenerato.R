# Species name vector:

SpeciesNames=c("Charmander","Squirtle","Bulbasaur","Pikachu","Pidgey") # generates potential species names
Species100=sample(SpeciesNames,100,replace=T) # creates vector with 100 species names

# Vectors for limb measurements:

Limb_width=round(abs(rnorm(n=100, mean=5, sd=3)),digits=2) # creates limb width vector with only positive values, rounded to 2 decimal places
Limb_length=round(abs(rnorm(n=100, mean=30, sd=10)),digits=2) # creates limb length vector with only positive, rounded to 2 decimal places

# Observer vector:

ObserverNames=c("Ash","Misty","Brock") # generates potential observer names
Observers100=sample(ObserverNames,100,replace=T)# creates vector with 100 observer names

# Create data frame:

MyData=data.frame("Species"=Species100, "Limb_Width"=Limb_width, "Limb_Length"=Limb_length, "Observer"=Observers100) # generates data frame with pre-generated vectors

# Write to csv file:

write.csv(MyData, "measurements.csv") # exports data frame to a csv file called measurements.csv
