#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/postcodes/POA06aAUST_region.shp \
  data-generated/postcodes-syd.js \
  --width 900 \
  --buffer_distance -20 \
  --simplify_tolerance 1 \
  --name postcodes-syd \
  --country_name_index 1 \
  --country_code_index 1 \
  --codes_file data-codes/postcodes-syd.tsv \

open html/postcodes-syd.html

