# MechaCar_Statistical_Analysis

## Background

AutosRUs is developing a new prototype vehicle, MechaCar. Jeremy, the data analytic's team leader was approached by upper management about a special project. MechaCar is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

We have been asked to do the following to take to upper management:

* Perform multiple linear regression analysis to identify which variables in the dataset can predict the mpg of MechaCar prototypes
* Collect summary statistics on the PSI (pounds per square inch) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG

I have used the MechaCar_mpg.csv dataset and RScript to design the following multiple linear regression model for predicting "miles per gallon" (mpg) statistics. In the picture below, the variables/coefficients p-values (Pr(>|t|)) are:

* vehicle length - 2.60e-08
* vehicle weight - 0.0776
* spoiler angle - 0.3069
* ground clearance - 5.21e-08
* AWD (All Wheel Drive) - 0.1852

<img width="618" alt="Deliverable 1" src="https://user-images.githubusercontent.com/94575416/158071288-19831de4-5e99-434d-89a6-126842a7df80.png">

### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

From the dataset results it is possible to predict that the following variables/coefficients provided a non-random amount of variance to the mpg values:

* vehicle weight(0.0776)
* spoiler angle(0.3069)
* AWD(All Wheel Drive)(0.1852)

### 2. Is the slope of the linear model considered to be zero? Why or why not?

P-values (probability values) for the above variables are smaller than our significance level of 0.05. For example, the following is a calculation of the significance level for vehicle weight: 0.076 -1 = 0.9224 or 92.2%. The desired significance level is 0.05 - 1 = 0.95 or 95%). All 3 variable/coefficients are predicted to be outside the 95% minimum significance level based on the data used for the linear model. The intersept value (5.08e-08) in this model is statistically significant as well which means it is possibile other variables/coefficients may contribute to the variation in mpg that have not been included in our model (nor in the provided dataset). Additional values may still need to be collected or observed to increase the power of the analysis predeiction. The slope of the linear model is not considered to be zero because the p-value is less than 0.05.

### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

According to the summary output, the r-squared value is 0.71, which predicts that approximatley 71% of all mpg predictions will be correct when using this linear model. In addition, the p-value of the linear model is 5.35e-11 (last line of the above picture in the F-statistic results), which is smaller (94.65%) than the desired significance level of 0.05 (95%).

## Summary Statistics on Suspension Coils

Code for Deliverable 2
<img width="522" alt="Deliverable 2" src="https://user-images.githubusercontent.com/94575416/158074261-bf211e1b-591f-4454-b5bb-41205b8bf398.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The 'total_summary' for all 3 lots reveals the mean is steady at 1498.78 in all 150 rows of the total_summary table. The variance is reported at 62.29356 for all 150 rows of the total_summary table. The standard deviation is reported at 7.892627 for all 150 rows of the total_summary table. The median value of the table varies between 1452 and 1542. The variance of the PSI sample distribution and the standard deviation are well within the design specifications for all 3 lots and does not exceed 100 pounds per square inch.

<img width="683" alt="Total Summary" src="https://user-images.githubusercontent.com/94575416/158074313-c9de6797-c28c-4a27-83a9-08905cfc2417.png">

<img width="776" alt="Lot Summary" src="https://user-images.githubusercontent.com/94575416/158074376-fe790318-12a5-407c-875a-af91b6036cf9.png">

<img width="859" alt="Suspension Coil" src="https://user-images.githubusercontent.com/94575416/158074385-aaeee889-a8ec-4575-a78b-38a1084bc2f5.png">

Results of data analysis on the 3 suspension coil lots predicts that Lot 1 and Lot 2 meet design specification because the variance and standard deviation are under 100 pounds per square inch. However, Lot 3 does not predict to design specifications because variance and standard deviation are greater than 100 pounds per square inch.

## T-Tests on Suspension Coils








