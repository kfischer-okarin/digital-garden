---
id: ia3cgd5kglewwelw8j459vn
title: Regularization
desc: ''
updated: 1653397335226
created: 1653397309244
---

# Regularization

A method to deal with ![[Overfitting|reference.concepts.machine-learning.overfitting]].

Intuition: Penalize high values of model parameters $\theta_j$, to get a "simpler model"

Add a regularization term $\lambda \sum_{i=1}^{n} \theta_j^2$ to the cost function

New cost function will be:

$
J(\theta) = \frac{1}{2m} [ \sum_{i=1}^{m}(h_\theta(x^{(i)}) - y^{(i)})^{2} + \lambda \sum_{i=1}^{n} \theta_j^2 ]
$

- $\lambda$ is the **regularization parameter**
  - Too high value will result in underfitting, since it will just eliminate all featurs and try to fit to a horizontal line.

Note: $\theta_0$ is not penalized traditionally but even if it were it would not make much of a difference
