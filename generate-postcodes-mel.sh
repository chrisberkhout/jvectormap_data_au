#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/postcodes/POA06aAUST_region.shp \
  data-generated/postcodes-mel.js \
  --width 900 \
  --buffer_distance -40 \
  --simplify_tolerance 1 \
  --name postcodes-mel \
  --country_name_index 1 \
  --country_code_index 1 \
  --codes_file data-codes/postcodes-mel.tsv \

open html/postcodes-mel.html

