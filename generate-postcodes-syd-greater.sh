#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/postcodes/POA06aAUST_region.shp \
  data-generated/postcodes-syd-greater.js \
  --width 900 \
  --buffer_distance -20 \
  --simplify_tolerance 1 \
  --name postcodes-syd-greater \
  --country_name_index 1 \
  --country_code_index 1 \
  --codes_file data-codes/postcodes-syd-greater.tsv \

open html/postcodes-syd-greater.html

