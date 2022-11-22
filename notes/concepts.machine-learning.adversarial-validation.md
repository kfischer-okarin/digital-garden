---
id: fe4odyl95dhdrskq9mte9ys
title: Adversarial Validation
desc: ''
updated: 1669103232632
created: 1669102386646
---
# Adversarial Validation

A method to find out whether training and test data come from the same distribution.

1. Mix your training and test data and replace the label with a binary label that shows from which set the data point
   comes
2. Fit a model to the new labeled data
3. Check the [[concepts.machine-learning.auc]] - if the data come from the same distribution the value should be around
   0.5, i.e. the two types of samples cannot really be distinguished
