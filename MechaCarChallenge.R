# Deliverable 1
# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
car_table <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
   + AWD,car_table)

# Using the summary() function, determine the p-value and 
# the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
  + AWD,car_table))

# Deliverable 2
# Import and read in the Suspension_Coil.csv file as a table
suspension_table <- read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the 
# summarize() function to get the mean, median, variance, and standard deviation 
# of the suspension coil's PSI column
total_summary <- suspension_table%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI) ,SD=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the 
# group_by() and the summarize() functions to group each manufacturing lot 
# by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- suspension_table%>%
  group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), 
                                          Median=median(PSI), 
                                          Variance=var(PSI),
                                          SD=sd(PSI))


# Deliverable 3
# write an RScript using the t.test() function to determine if the PSI across all manufacturing 
# lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI,y=NULL,mu=1500)

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
# and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

# PSI across Lot 1
lot1 = subset(suspension_table, Manufacturing_Lot =="Lot1")
mean(lot1[['PSI']])
t.test(lot1$PSI,y=NULL,mu=1500)

# PSI across Lot 2
lot2 = subset(suspension_table, Manufacturing_Lot =="Lot2")
mean(lot2[['PSI']])
t.test(lot2$PSI,y=NULL,mu=1500)

# PSI across Lot 3
lot3 = subset(suspension_table, Manufacturing_Lot =="Lot3")
mean(lot3[['PSI']])
t.test(lot3$PSI,y=NULL,mu=1500)


