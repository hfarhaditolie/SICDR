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

## Citation
```bash
@ARTICLE{Tolie2025BlindUnderwaterIQA,
  author={Tolie, Hamidreza Farhadi and Ren, Jinchang and Cai, Jun and Chen, Rongjun and Zhao, Huimin},
  journal={IEEE Journal of Oceanic Engineering}, 
  title={Blind Quality Assessment Using Channel-Based Structural, Dispersion Rate Scores, and Overall Saturation and Hue for Underwater Images}, 
  year={2025},
  volume={},
  number={},
  pages={1-16},
  keywords={Image color analysis;Degradation;Measurement;Image quality;Quality assessment;Image edge detection;Indexes;Feature extraction;Attenuation;Lighting;Blind image quality assessment (IQA);dispersion rate (DR)/color richness;image contour (IC);structural features;underwater images},
  doi={10.1109/JOE.2025.3553888}}

```

## Contact
For any questions, feel free to reach out:
📧 **h.farhaditolie@gmail.com**

