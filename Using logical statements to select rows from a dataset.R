### Using logical statements to select rows from a dataset ###
worms<-read.table("worms.txt", head = TRUE)
View(worms)
attach(worms)


# To select all the rows of Vegetations with  Scrub 
worms[Vegetation == "Scrub", ]
# To select all the rows of True values of  Damp
worms[Damp == TRUE, ]

#Median of Worms.density 
median(Worm.density)

# Worm density greater than its median and soil pH  less than 5.6 
worms[Worm.density > median (Worm.density) & Soil.pH < 5.6, ]

# Meadow vegetations and True Damp 
worms[Vegetation == "Meadow" & Damp == TRUE, ]



# Meadow vegetations and True Damp concatenation the Slope, Area and Soil.pH
worms[Vegetation == "Meadow" & Damp == TRUE, c("Vegetation","Damp",  "Slope", "Area" , "Soil.pH") ]

#Selecting all the columns that contains numbers 

worms[ , sapply(worms, is.numeric) ]

#Selecting all the columns that contains characters 

worms[ , sapply(worms, is.character) ] 










