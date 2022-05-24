---
id: lwhxubtfb9qbgdn838aj7l1
title: Multiclass Classification
desc: ''
updated: 1653397295730
created: 1653397216581
---

# Multiclass Classification (one-vs-all / one-vs-rest)

If we have several classes we can just treat it as several two class classification problems:

![Multiclass Classification](assets/images/multiclass-classification.png)

- Train a logistic regression classifier $h_\theta^{(i)}(x) = P(y=1|x;\theta)$ for each class.
- To make a prediction on a new class pick the class $i$ that maximizes $h_\theta^{(i)}(x)$
