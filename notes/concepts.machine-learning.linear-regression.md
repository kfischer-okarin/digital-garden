---
id: qc4nrll670okuctsgm4ubw1
title: Linear Regression
desc: ''
updated: 1668993377528
created: 1653396808188
---

# Linear Regression

- Predict a continuous dependent variable with one or more independent variables
- Their relationship must be linear (i.e. multiplying the variable directly with a factor)
  - But you can add derive additional features and still use linear regression in the end
- Image: fit a line through a set of points

## Model function (Hypothesis)
$
h_\theta(x) = \theta_0 + \theta_1x
$

### Trick for quickly computing several predicted values for one or several hypotheses
Given house sizes: 2104, 1416, 1534, 852

Given hypotheses:

$
h_\theta(x) = -40 + 0.25x \\
h_\theta(x) = 200 + 0.1x \\
h_\theta(x) = -150 + 0.4x
$

Calc results via:

$
\begin{bmatrix}
1 & 2104 \\
1 & 1416 \\
1 & 1534 \\
1 & 852
\end{bmatrix}
\times
\begin{bmatrix}
-40 & 200 & -150 \\
0.25 & 0.1 & 0.4
\end{bmatrix}
$

## Cost Function
Minimize by $\theta_0$ and $\theta_1$

$
J(\theta) = \frac{1}{2m} \sum_{i=1}^{m}(h_\theta(x^{(i)}) - y^{(i)})^{2}
$

- Squared error function
- Mean squared error

## (Batch) Gradient Descent Algorithm

$
\theta_0 := \theta_0  - \alpha \frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})  - y^{(i)})
$

$
\theta_1 := \theta_1  - \alpha \frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})  - y^{(i)}) * x^{(i)}
$

- The Cost function is a convex function (bowl shaped) so it will only ever have one minimum
- It uses all training samples in every step

## Resources
- [Machine Learning Mastery - Linear Regression for Machine Learning](https://machinelearningmastery.com/linear-regression-for-machine-learning/)
