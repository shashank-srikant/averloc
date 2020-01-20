#!/bin/sh

set -ex

mkdir -p /mnt/outputs

python /model/train.py \
  --train_path /mnt/inputs/train.tsv \
  --dev_path /mnt/inputs/valid.tsv \
  --expt_name /mnt/outputs/lstm_128_2

# python train.py --train_path data/java-small/transforms.Identity/train.tsv --dev_path data/java-small/transforms.Identity/valid.tsv --expt_name java_small_identity  --resume --expt_dir experiment/java_small_identity --load_checkpoint Best_F1
