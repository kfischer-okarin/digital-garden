
# Gradient Descent

We have a function we want to minimize (the cost function).

# Algorithm:
- Start with some start parameter
- Change parameter to reduce the function value until we hopefully end up at a minimum

Basically go down a hill

![Gradient Descent Visualization](assets/images/gradient-descent.png)

Repeat until convergence

$
\theta_j := \theta_j - \alpha \frac{\partial}{\partial\theta_j}J(\theta_0, \theta_1)
$

- $\alpha$ is learning rate

The need to update simultaneously:
```rb
new_theta_0 = calc_new_theta_0(theta_0, theta_1)
new_theta_1 = calc_new_theta_1(theta_0, theta_1)
theta_0 = new_theta_0
theta_1 = new_theta_1
```
