#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/suburbs/SSC06aAUST_region.shp \
  data-generated/suburbs-mel-greater.js \
  --width 900 \
  --buffer_distance -40 \
  --simplify_tolerance 1 \
  --name suburbs-mel-greater \
  --country_name_index 1 \
  --country_code_index 1 \
  --codes_file data-codes/suburbs-mel-greater.tsv \

open html/suburbs-mel-greater.html

