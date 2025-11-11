# BIO - Zvýraznění krevního řečiště v prstu README
## Overview
This repository contains code and documentation for experiments involving Gabor filters and the maximum curvature method.

## Folder structure
```
project/
├── data/
├── doc/
└── src/
```

### data/
Not included directly due to large file size. The link to google drive is provided. Contains:
- Supervised training data  
- Unsupervised training data  
- Test datasets used for evaluation  
- Pre-trained Gabor models

### doc/
Contains:
- Project documentation in pdf format 

### src/
Contains all source code modules:
- ``extraction_comparison`` — Experiments using the maximum curvature method
- ``gabor_filter_training/`` — Training of Gabor filters models  
- ``process_image/`` — Image preprocessing used with ``extraction_comparison``
