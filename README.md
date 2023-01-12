# MechaCar_Statistical_Analysis


## Overview

There are multiple reasons for this analysis: 
 - Identify the variables that predict the miles per gallon(mpg) of prototypes.
 - Summary statistics on the pounds per square inch (PSI) of the suspension coils.
 - T-tests to determine if the manufacturing lots are statistically different from the mean population.
 - Comparing vehicle performance of the prototypes against other manufacturers vehicles. 
This information was found using R and kept in the [MechaCarChallenge](https://github.com/stwpf01/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) file. Results will be shown and described below. 
## Linear Regression to Predict MPG


![Linear_Regression](https://github.com/stwpf01/MechaCar_Statistical_Analysis/blob/main/Images/1LinearRegression.png)

Two variables that provide a non-random amount of variance to the value mpg is the `ground_clearance` and `vehicle_length` variables. The slope of the model is not zero as the p-value is equal to 5.35e-11, which is significantly lower than the assumed significance level of 0.05%. While this linear model is helpful in determining mpg, the `Intercept` value is statistically significant, meaning there should be more variables and factors that need to be included in order to make a surer judgement. 
## Summary Statistics on Suspension Coil


![Total_Summary](https://github.com/stwpf01/MechaCar_Statistical_Analysis/blob/main/Images/2Total_Summary_DataFrame.png)

![Lot_Summary](https://github.com/stwpf01/MechaCar_Statistical_Analysis/blob/main/Images/2Lot_Summary_DataFrame.png)

Looking at the `Variance` value in the first image summarizing the total manufacturing lots, one could assume that the data meets the design specification that the suspension coils not exceed 100 pounds per square inch. However, when looking at the lots individually (second figure), it is evident that Lot3 does not meet this requirement as its `Variance` is 170.3. Lot1 and Lot2 are within the design specification parameter.  

## T-Tests on Suspension Coil


![AllLots_Lot1](https://github.com/stwpf01/MechaCar_Statistical_Analysis/blob/main/Images/3AllLots_Lot1.png)


![Lot2_Lot3](https://github.com/stwpf01/MechaCar_Statistical_Analysis/blob/main/Images/3Lot2_Lot3.png)

When looking at all the lots together as well as Lot1 and Lot2 individually, the p-values are higher than the assumed significance level of 0.05%. This means that there is no overall difference (or not enough evidence to prove contraiwise) between the PSI and the population mean of 1500 pounds per square inch. Like the previous section, Lot3 is statistically different because its p-value is lower than 0.05%. This could be correlated to its high variance level. 

## Study Design: MechaCar vs Competition

The metrics I would test would be the vehicle weight compared to their maintenance cost between cities and rural areas.

Null Hypothesis: Difference of maintenance between lighter and heavier cars is minimal.

Alternative Hypothesis: Lighter Cars are less expensive to maintain compared to Heavier Cars.

The most appropriate statistical test to determine the results would be the Chi-Squared Test because this hypothesis requires multiple groups of data. The data needed would be the vehicle weight, location of the person driving the vehicle (rural, city,etc.), and the average cost of their maintenance over a specified span of time.  