## Directions
To complete the project create **code chunks** that generate response to each question (some questions can have multiple chunks).  Full completion of this project requires the submission of 
1. a completed, **knitted** `.html` document (created using knitr) that displays text herein and your responses.  
2. a completed .rmd file (this file)that all the codes within it can run without errors
3. For each code, write comment to explain what the code is used for.

## Questions
**1. For these questions use the `bfeed` data set that can be found in the `KMsurv` library. First, examine the distribution of the variable `duration`.  This data details the duration of breast feeding for mothers and includes a number of covariate.  Plot the cumulative survival and hazard functions for the duration data.**
  
  
  **2. Building on the previous analysis, fit Kaplan-Meier models to the duration data from women classified as `Poverty` and `Not Poverty`. Plot those two curves, with labeled axes, a title and a legend describing the categories.**
  
  **3. Write code to test the hypothesis that the survival function (breast feeding duration) for `poverty` and `not poverty` are equal.  Explain the results including an interpretation of the hypothesis test.**
  
  **4. For this series we are examining graduate school admissions data.  The data has four variables: admit (1 = admitted, 2= not admitted), gre, gpa (both continuous scores), rank (1 = prestigous...4 = less prestigious, ranking for undergraduate institution).  Develop a predictive model for graduate school admission based on this data set.  Optimize the model for best fit and report the meaning of the final parameter estimates.**
  
  **6. Generate a new data set that evaluates the isolates the effect of rank on admissions probability.  Explain findings including how admission probabilities differ due to the ranking of a candidates undergraduate institution.**
  