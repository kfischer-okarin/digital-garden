
# General Advanced Optimization Functions

For example
- Conjugate Gradient
- BFGS
- L-BFGS

# Using them in Octave

```octave
function [jVal, gradient] = costFunction(theta)
  jVal = [...code to compute J(theta)...];
  n = length(theta)
  gradient = zeroes(n, 1)
  gradient(1) = [...code to compute partial derivative of J(theta) by theta(1)...];
  ...
  gradient(n + 1) = [...code to compute partial derivative of J(theta) by theta(n + 1)...];
end

options = optimset('GradObj', 'on', 'MaxIter', 100);
initialTheta = zeros(2,1);
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);
```
