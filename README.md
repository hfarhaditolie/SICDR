# SICDR

Source code for the paper:
**"Blind Quality Assessment Using Channel-based Structural, Dispersion Rate Scores, and Overall Saturation and Hue for Underwater Images"**

## Getting Started
### Running the Demo
To extract features using the proposed model, run:
```matlab
demo.m
```
This script processes the sample image **"0001.png"**.

### Prerequisites
Before running the model, install the **GBVS** saliency map extraction package in MATLAB:
[GBVS Repository](https://github.com/Pinoshino/gbvs)

## Evaluating the Model on Underwater Image Datasets
To evaluate the model on underwater image datasets, follow these steps:

1. Extract features for each image in the dataset using `feature_extractor.p` as demonstrated in `demo.m`.
2. Save the extracted features as a `.mat` file.
3. Run `evaluate_model.m` to compute the median performance across **1000 random train-test splits** of the dataset.

## Contact
For any questions, feel free to reach out:
📧 **h.farhaditolie@gmail.com**

