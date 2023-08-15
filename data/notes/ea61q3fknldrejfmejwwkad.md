# AUC: Area under the ROC Curve

- Area below the [[concepts.machine-learning.roc-curve]]
- It expresses the quality of the model's predictions
- Valued between 0 and 1 (A classifier that's 100% correct has an AUC of 1.0)

- Scale-invariant: It just measures how well predictions are made irrespective of what kind of value/probability was
  predicted
  - This is often a good property but sometimes the values of the probability output are very important but AUC will not
    help with that
- Classification-threshold-invariant: It measure's the model's quality irrespective of the threshold
  - So in a sense it gives a measure of how well the model itself does in general
  - But depending on the domain false negative costs and false positive costs are vastly different - which means AUC
    would not be a useful metric to specifically minimize one of them

