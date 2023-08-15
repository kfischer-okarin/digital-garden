# $$\chi^2$$ Test

Source: https://www.scribbr.com/statistics/chi-square-goodness-of-fit/

$$
\chi^2=\sum{\frac{(O-E)^2}{E}}
$$

Where:

- $\chi^2$ is the chi-square test statistic
- O is the observed frequency
- E is the expected frequency

## Goodness of Fit Test
You want to know if a sample of data which is a histogram of counts (independent variable is categorical, dependent
variable is quantitative) conforms to an expected distribution of counts.

$H_0$: The counts conform to the expectation

$H_1$: The counts are statistically different

1. Calculate the $\chi^2$ value as above
2. Determine the degrees of freedom: number of groups/bins - 1
3. Check the table below to see the probability that $$H_0$$ must be rejected

## Table of Significant values
|Degrees of<br/> freeddom|.99|.975|0.95|.9|.1|.05|.025|.01|
|-|-|-|-|-|-|-|-|-|
|1|---|0.001|0.004|0.016|2.706|3.841|5.024|6.635|
|2|0.020|0.051|0.103|0.211|4.605|5.991|7.378|9.210|
|3|0.115|0.216|0.352|0.584|6.251|7.815|9.348|11.345|
|4|0.297|0.484|0.711|1.064|7.779|9.488|11.143|13.277|
|5|0.554|0.831|1.145|1.610|9.236|11.070|12.833|15.086|
|6|0.872|1.237|1.635|2.204|10.645|12.592|14.449|16.812|
|7|1.239|1.690|2.167|2.833|12.017|14.067|16.013|18.475|
|8|1.646|2.180|2.733|3.490|13.362|15.507|17.535|20.090|
|9|2.088|2.700|3.325|4.168|14.684|16.919|19.023|21.666|
|10|2.558|3.247|3.940|4.865|15.987|18.307|20.483|23.209|
