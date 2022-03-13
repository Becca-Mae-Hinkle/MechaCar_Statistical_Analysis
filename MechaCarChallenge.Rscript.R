# Deliverable 1
# Load the dplyr package
library (dplyr)

#Read the MechaCar_mpg.csv as a dataframe
file <- file.choose()
MechaCar <- read.csv(file, check.names = F,stringsAsFactors = F)

#Perform the linear regression using lm()function passing all six variables with mpg as the y axis
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

#Use the summary() function to determine the p-value and the r-squared value and save code to GitHub
summary(Mecha_lm)
