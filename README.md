## Problem Statement
This project focuses on performing a **chi-squared** analysis on a dataset, by determining if the *numbers of cylinders* in a car has a significant correlation with the *type of car sold*. Additionally, two other combinations of categorical variables in the same dataset will be recommended.

## About the Dataset
The dataset contains 26 independent variables (Continuous and Categorical) including *drivetrain*, *cylinders*, *horsepower*, *airbags*, *weight*, *make*, *min.price*, *max.price* etc.

**Dependent variable**: *Type of car sold*
## Hypothesis Statement
I want to test the hypothesis which states that there is a correlation between the *number of cylinders* and the *the type of car sold*. Basically, I want to know if there is a relationship between them where the outcome of one of the categorical data depends on the other.

## Analysis
 ### Stating the null and alternative hypotheses
* **Null hypothesis, H0**: The number of cylinders in a car is independent of the type of car sold.
+ **Alternative hypothesis, H1**: The number of cylinders in a car is dependent on the type of car sold.

### Specifying α for the test to be performed
α is the significance level for this test (0.05 or 5%) and it refers to the maximum risk I am willing to take to reject the null hypothesis which states that there is no relationship between the number of cylinders and the type of car sold.

### Evaluating the test statistic
Based on the problem statement, chi-squared is the appropriate statistic to run for this analysis because the variables are categorical, and I want to verify if they depend on each other. 
Using R-studio, the test can be run by creating a contingency table. A crosstab contingency table is created by specifying the columns, carsdatabase$Cylinders,carsdatabase$Type, and setting
prop.r = TRUE
prop.c = TRUE
prop.chisq = TRUE
chisq = TRUE
row.labels = TRUE

Through this, the following will be obtained
* The chi-squared test statistic = 78.93491
+ The degree of freedom, which equals (R-1)x(C-1), where R = row and C = column
df= 25 (i.e. (6-1)*(6-1))
- The p-value = 1.67e-07 *which is the risk I am willing to take based on the result of the chi-dquared analysis.*

### Making the decision
The p-value from the chi-squared analysis is 1.67e-07 and this is lower than the 5% significance level. This shows a result that is not in support of the null hypothesis. 

Consequently,  we reject the null hypothesis, which states that the number of cylinders in a car is independent of the type of car sold, with a 95% confidence. 

The implication of this is that the evidence we have shows a level of dependency/correlation between the two categorical variables.

From the output, an error message showing that the chi-squared approximation may be incorrect was recorded. This is as a result of the contingency table having a lot of the expected values (29 out of 36) being less than 5. This can be corrected by: 
* Combining some of the columns in the following ways: side by side, choosing columns with less data, sorting the columns inascending order before combining the columns, or choosing the columns with the closest mean.
+ Interchanging the rows and columns

## Two other combinations that can be investigated
Establishing a relationship, correlation, or level of dependency between two categorical variables using the chi-squared test can be leveraged to make recommendations to customers who want to purchase a car based on their needs. Some of these combinations include:
* *DriveTrain* and *Airbags*
Based on the drivetrain a potential customer is interested in, we can recommend a car with the appropriate number of airbags to match their interest.
* *Airbags* and the *number of cylinders*: 
Like the above combination, noting the number of airbags a customer wants can be used to determine the cars that have the pertinent number of cylinders.















 

