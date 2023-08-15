# Autoencoder
- A neural network that tries to reproduce the training data exactly (i.e. learn the identity function)
- It has one hidden layer (called the Bottleneck) with less neurons than the input layer
  - This will be the representation of the data's characteristics - by using fewer neurons than the original data
    dimension the network is forced to learn the relevant characteristics
- The data itself are the label - thus it is not a classic supervised learning approach but a self-supervised learning
  approach

## Applications
- Anomaly Detection
  - Train with lots of good, normal data
  - Feeding the network an irregular broken data point should result in an irregularly high error
- Noise Reduction
  - Train a certain type of data by adding random noise to it and using the original clean data as label
- Other uses:
  - information retrieval, imputation, feature extraction, and dimensionality reduction problems
    - TODO: Expand on those

## Resources
- [Autoencoders on bnomial](https://articles.bnomial.com/autoencoders)
