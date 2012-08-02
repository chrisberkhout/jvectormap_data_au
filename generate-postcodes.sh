#!/bin/bash -x
set -e

time python \
  jvectormap/converter/converter.py \
  data-source/postcodes/POA06aAUST_region.shp \
  data-generated/postcodes.js \
  --width 900 \
  --buffer_distance -3000 \
  --simplify_tolerance 1000 \
  --name postcodes \
  --country_name_index 1 \
  --country_code_index 1 \
  # --minimal_area 4000000 \
  # --longtitude0 -20.0 \
  # --where "ISO = 'USA'" \
  # --insets '[{"codes": ["US-AK"], "width": 200, "left": 10, "top": 370}, {"codes": ["US-HI"], "width": 100, "left": 220, "top": 400}]' \
  # --codes_file data/codes-en.tsv \

open html/postcodes.html

