# Mechacar Statistical Analysis

## Project Overview of the Analysis
#### This project was conducted to help the manufacturing team at AutosRUs overcome production troubles with their new prototype, the **MechaCar**.
* The goal of this project was to:
    * Perform multiple linear regression analysis to identify which variables in the dataset predict the MPG of MechaCar prototypes
    * Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from three different manufacturing lots
    * Run t-tests to determine if the manufacturing lots are statistically different from the mean population
    * Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

#### Resources
- Data Sources:<br>
`MechaCar_mpg.csv`<br>`Suspension_Coil.csv`

- Software:  RStudio Version 1.4.1717
- Languages: R Version 4.1.0
  
## Linear Regression to Predict MPG
Using the **R** Programming Language, a code was written to perform linear regression comparing the vehicles fuel effiency (MPG) based on five factors:  vehicle length, vehicle weight, spoiler angle, ground clearance, and the drive configuration (AWD, "yes" or "no").

![MPG_Linear_Regression](https://user-images.githubusercontent.com/77071776/122681679-2da7e700-d1bb-11eb-81bb-b9899d18f288.PNG)
* The two variables that provided a non-random amount of variance to the MPG values in the dataset were the **vehicle length"" and the **ground clearance**.  This is shown in the table above with the p-value of the vehicle length being 2.60e-08 and the p-value of the ground clearance being 5.21e-08.
* The slope of the linear model is **not considered to be zero** because we've rejected the null hypothesis.  The null hypothesis is that there is no relationship between the dependent variable of MPG and each of the independent variables.  Because the p-value for the combined linear model is 5.35e-11 we've calculated that the overall statistical significance is well within the 0.05 range.  If vehicle length and ground clearance were not independent variables in this linear model we would fail to reject the null hypothesis.
* This linear model is fairly adequate at predicting MPG because of the overwhelming significance that ground clearance and vehicle height introduce into the model.
    
## Summary
