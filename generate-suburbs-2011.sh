#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/suburbs-2011/SSC_2011_AUST.shp \
  data-generated/suburbs-2011.js \
  --width 900 \
  --buffer_distance -3000 \
  --simplify_tolerance 1000 \
  --name suburbs-2011 \
  --country_name_index 1 \
  --country_code_index 0 \
  # --minimal_area 4000000 \
  # --longtitude0 -20.0 \
  # --where "ISO = 'USA'" \
  # --insets '[{"codes": ["US-AK"], "width": 200, "left": 10, "top": 370}, {"codes": ["US-HI"], "width": 100, "left": 220, "top": 400}]' \
  # --codes_file data/codes-en.tsv \

open html/suburbs-2011.html

