
# Normal Equation

Analytic solution for [[concepts.machine-learning.linear-regression]]

Assuming you have these training data points:

|$x_1$|$x_2$|$x_3$|$x_4$|$y$|
|-----|-----|----|-----|----|
|2104|5|1|45|460|
|1416|3|2|40|232|
|1534|3|2|30|315|
|852|2|1|36|178|

Add an additional column $x_0$ with value 1 and turn the examples into a matrix, and the results into a vector

$
X = \begin{bmatrix}
1 & 2104 & 5 & 1 & 45 \\
1 & 1406 & 3 & 2 & 40 \\
1 & 1534 & 3 & 2 & 30 \\
1 & 852 & 2 & 1 & 36
\end{bmatrix}
y = \begin{bmatrix}
460 \\ 232 \\ 315 \\ 178
\end{bmatrix}
$

Then you can calculate $\theta$

$
\theta = (X^TX)^{-1}X^Ty
$

In Octave
```octave
pinv(X'*X)*X'*y
```
(use pseudo-inverse to avoid non-invertibility problems with $X^TX$)
- Could happen because of redundant (linear dependent) features or too many features for too few data points
