#!/bin/bash -x
set -e

date
time python \
  jvectormap-fork/converter.py \
  data-source/suburbs-2011/SSC_2011_AUST.shp \
  data-generated/suburbs-mel-2011.js \
  --width 900 \
  --buffer_distance -40 \
  --simplify_tolerance 1 \
  --name suburbs-mel-2011 \
  --country_name_index 1 \
  --country_code_index 0 \
  --codes_file data-codes/suburbs-mel-2011.tsv \

open html/suburbs-mel-2011.html

