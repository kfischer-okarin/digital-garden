
# Logistic Regression

Desprite the name it's a **classification** algorithm

## Model function (Hypothesis)
We want a model function that is $0 \leq h_\theta(x) \leq 1$

$
h_\theta(x) = g(\theta^Tx) = \frac{1}{1 + e^{-\theta^Tx}}
$

- g is the Sigmoid function or Logistic function

  $
  g(z) = \frac{1}{1+e^{-z}}
  $

  ![Sigmoid Function](assets/images/sigmoid-function.png)
- This value is the estimated probablity that $y = 1$ on the given x

  $
  h_\theta(x) = P(y = 1|x;\theta)
  $
    - "The probability that $y = 1$, given x, parametrized by $\theta$"

- We say y=1 when $h_\theta(x) \geq 0.5$, i.e. $z = \theta^Tx \geq 0$
  - This basically defines a dividing line/plane/hyperplane between the two classes - The Decision Boundary

   ![Decision Boundary](assets/images/logistic-regression-decision-boundary.png)


## Cost Function
We cannot use the same cost function as with Linear regression, since it will not be convex (i.e. it will have local minima)

So we use:

$
J(\theta) = \frac{1}{m} \sum_{i=1}^{m} Cost(h_\theta(x^{(i)}), y^{(i)})
$

With:
- $Cost(h_\theta(x), y) = -log(h_\theta(x))$ if y = 1

  ![Logistic Regression Cost Function](assets/images/logistic-regression-cost-function.png)
- $Cost(h_\theta(x), y) = -log(1 - h_\theta(x))$ if y = 0

  ![Logistic Regression Cost Function](assets/images/logistic-regression-cost-function2.png)

Combined into one function that is:

$
Cost(h_\theta(x), y) = -y * log(h_\theta(x)) - (1 - y) * log(1 - h_\theta(x))
$

This becomes:

$
J(\theta) = - \frac{1}{m} \sum_{i=1}^{m} (y^{(i)} * log(h_\theta(x^{(i)})) + (1 - y^{(i)}) * log(1 - h_\theta(x^{(i)})))
$


## (Batch) Gradient Descent Algorithm

$
\theta_j := \theta_j  - \alpha \frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})  - y^{(i)}) * x^{(i)}_j
$

So

$
\frac{\partial}{\partial\theta_j}J(\theta) = \frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})  - y^{(i)}) * x^{(i)}_j
$
