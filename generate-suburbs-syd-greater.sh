#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/suburbs/SSC06aAUST_region.shp \
  data-generated/suburbs-syd-greater.js \
  --width 900 \
  --buffer_distance -20 \
  --simplify_tolerance 1 \
  --name suburbs-syd-greater \
  --country_name_index 1 \
  --country_code_index 1 \
  --codes_file data-codes/suburbs-syd-greater.tsv \

open html/suburbs-syd-greater.html

