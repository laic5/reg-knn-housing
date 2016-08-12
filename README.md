# reg-knn-housing

Ello. Just working with the dataset found on the UCI page.
Download data here: https://archive.ics.uci.edu/ml/machine-learning-databases/housing/

Steps that I'm following:

1. Load in data set
2. examine predictors for distribution
3. transform variables if necessary, using powers ^0.5 and log transformations
4. Leave out 10% of the data set for validation.
5. look for correlation between variables, using plot(dat) and cor(dat)
6. analyze ANOVA table
7. perform all subsets and/or stepwise regression to fit a model
8. Conduct partial F-tests to see whether to include or disclude the variables indiciated in the above algorithm.
9. Run diagnostics (residuals of each predictor against the fitted values, QQ plot, box-cox)
