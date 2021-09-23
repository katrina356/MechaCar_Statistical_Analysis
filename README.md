# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The variables that provided a non-random amount of variance to the mpg values in the dataset were:
    - ground clearance at 5.77 -08
    - mpg at 2.60 -12
    - Intercept at 2 -16

The slope of the linear model is not considered to be zero.  Since our p-value of 6.712 X 10-11 is much smaller than our assumed significance level of .05% it is safe to reject the null hypothesis.  As such the slope of the model is not zero.

The linear model does not predict mpg of MechaCar prototypes effectively.  The intercept of 2 X 10-16 is statistically significant which means the significant features (mpg and ground clearance) may need scaling or transformin to help improve the predictive power of the model.  In addition there may be other variables, that are not in this model, that may add predictive value if included in the model.

