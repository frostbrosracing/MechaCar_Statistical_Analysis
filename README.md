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
    
## Summary Statistics on Suspension Coils
The specifications of the MechaCar dictate that the variance of the coils must not exceed 100 PSI.  By analyzing the data for all the manufacturing lots combined, we can see that the production of the coils is within the allowed range.

![total_summary](https://user-images.githubusercontent.com/77071776/122684798-533dec00-d1cd-11eb-8297-4be81951e900.PNG)

One of the manufacturing challenges AutosRUs is facing with the MechaCar is in the production of the suspension coils in Lot 3.  By analyzing the data for each of the different manufacturing lots, we can see that the production of the coils in this lot is out of specification by almost double the allowed range.  This could be as a result of the wear and tear on the tooling and equipment used in the production.  

![lot_summary](https://user-images.githubusercontent.com/77071776/122684694-87fd7380-d1cc-11eb-8915-0ba70bf928d2.PNG)

## T-Tests on Suspension Coils
In order to determine if the manufacturing lots are statistically different from the mean population, four t-tests were conducted.

*  The entire production of suspension coils was tested against the specification of 1500 PSI.  Assuming our significance level was the common 0.05 percent, the p-value of 0.06028 is above our significance level which indicates that the entire lot as a whole is not statistically different from the mean population.
 
![t_test_all](https://user-images.githubusercontent.com/77071776/122685566-c34e7100-d1d1-11eb-92e4-5f1a92ec962f.PNG)

*  Lot 1 was tested against the specification of 1500 PSI.  The p-value of 1 indicates that the lot is not statistically different from the mean population.

![t_test_lot1](https://user-images.githubusercontent.com/77071776/122685717-cac24a00-d1d2-11eb-98eb-d74748e6c2ba.PNG)

*  Lot 2 was tested against the specification of 1500 PSI.  The p-value of 0.6072 indicates that the lot is not statistically different from the mean population.

![t_test_lot2](https://user-images.githubusercontent.com/77071776/122685746-eb8a9f80-d1d2-11eb-844f-9d7a0a360e84.PNG)

*  Lot 3 was tested against the specification of 1500 PSI.  The p-value of 0.04168 indicates that the entire lot **IS** statistically different from the mean population.

![t_test_lot3](https://user-images.githubusercontent.com/77071776/122685756-f9402500-d1d2-11eb-8af0-7e7ee94064ca.PNG)

## Study Design: MechaCar vs Competition
Consumers have many options when shopping for a new vehicle.  One of the factors highly considered during the selection process is vehicle safety.  In order to see where the MechaCar stands among its competitors in the market, a statistical study could be undertaken to quantify where it ranks against the competition.

* The National Highway Traffic Safety Adminstration (NHTSA) provides rating information that is readily available to the public for most current production vehicles.
  * In order to compare the MechaCar to other vehicles in its category, the following metrics could be tested:
    * Frontal Crash
    * Side Crash
    * Rollover
* The alternative test to be conducted is that the MechaCar's superior rating is far superior to all it's competitors.
* The statistical test that is would be run is a Two-Sample t-Test for each of the measured ratings.
* The data needed to conduct this testing would be provided from the NHTSA's database containing Frontal Crash, Side Crash and Rollover information in the auto industry.

