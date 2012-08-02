#!/bin/bash -x
set -e

# This data comes from:
# http://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-1-states-provinces/

mkdir -p data-source/usa

curl -L -o data-source/usa/10m-admin-1-states-provinces-shp.zip \
  http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/10m-admin-1-states-provinces-shp.zip

unzip data-source/usa/10m-admin-1-states-provinces-shp.zip -d data-source/usa

