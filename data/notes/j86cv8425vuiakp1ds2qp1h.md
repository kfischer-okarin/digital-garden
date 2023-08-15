
# Overfitting

The model fits the training set too perfectly and therefore has poor performance on unknown data.

Possible causes:
- The chosen model is much more complex than the relationship between independent and dependent variables. Thus the
  model tries to learn to fit for example random fluctuations of an originally mostly linear dataset.
  - Fitting a high order polynomial to linear data
- The training set and the validation set / real-world data come from a different distribution (for instance too much
  time passed since the collection of the training data)
  - You can use [[concepts.machine-learning.adversarial-validation]] to test whether you can easily distinguish between
    training and test data
