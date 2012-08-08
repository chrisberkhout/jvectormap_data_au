#!/bin/bash -x
set -e

# # The command according to the jvectormap README:
# python \
#   path/to/converter.py \
#   path/to/geo-data.shp \
#   path/to/resulting-map.js \
#   --width 900 \
#   --country_name_index 4 \
#   --where "ISO = 'USA'" \
#   --codes_file path/to/codes-en.tsv \
#   --insets '[{"codes": ["US-AK"], "width": 200, "left": 10, "top": 370}, {"codes": ["US-HI"], "width": 100, "left": 220, "top": 400}]' \
#   --minimal_area 4000000 \
#   --buffer_distance -3000 \
#   --simplify_tolerance 1000 \
#   --longtitude0 10w \
#   --name us

# The command I got working:
date
time python \
  jvectormap/converter/converter.py \
  data-source/usa/ne_10m_admin_1_states_provinces_shp.shp \
  data-generated/usa.js \
  --width 900 \
  --country_name_index 4 \
  --where "ISO = 'USA'" \
  --minimal_area 4000000 \
  --buffer_distance -3000 \
  --simplify_tolerance 1000 \
  --longtitude0 -20.0 \
  --name usa \
  # --insets '[{"codes": ["US-AK"], "width": 200, "left": 10, "top": 370}, {"codes": ["US-HI"], "width": 100, "left": 220, "top": 400}]' \
  # --codes_file data/codes-en.tsv \

open html/usa.html

