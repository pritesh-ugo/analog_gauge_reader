#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda create --name gauge_reader python=3.8 -y
conda activate gauge_reader

# Install pytorch
conda install pytorch==2.0.0 torchvision==0.15.0 torchaudio==2.0.0 -c pytorch -c nvidia -y

# Install mmocr
pip install -U openmim
mim install mmengine==0.7.2
mim install mmcv==2.0.0
mim install mmdet==3.0.0
mim install mmocr==1.0.0

# Install yolov8
pip install ultralytics==8.0.66

# Install sklearn
pip install -U scikit-learn==1.2.2

echo "Setup Complete!"
