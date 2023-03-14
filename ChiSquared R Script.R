
#Load Libraries
library(MASS)
#Create Table
tbl = table(survey$Smoke, survey$Exer)
tbl # the contingency table
#Chi-squared Statistic
chisq.test(tbl)

#New Table
ctbl = cbind(tbl[,"Freq"], tbl[,"None"] + tbl[,"Some"])
ctbl

#Chi-squared New Table
chisq.test(ctbl)

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)

# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type)
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))

install.packages('descr')

#Load Library
library(descr)
#Cross Tab
crosstab(Cars93$AirBags,Cars93$Type, prop.r=TRUE,
         prop.c=TRUE,prop.chisq = TRUE, chisq = TRUE, row.labels = TRUE)