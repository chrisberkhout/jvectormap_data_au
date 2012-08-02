#!/bin/bash -x
set -e

# Info on Australia geo data:
#   http://gis.stackexchange.com/questions/495/are-there-any-free-administrative-boundaries-available-as-shapefiles/506#506

# Source of this data:
#   http://abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/2923.0.30.0012006?OpenDocument

mkdir -p data-source/postcodes

curl -L -o data-source/postcodes/2923030001poa06aaust.zip \
  "http://abs.gov.au/AUSSTATS/subscriber.nsf/log?openagent&2923030001poa06aaust.zip&2923.0.30.001&Data%20Cubes&33A877E7086CA98FCA25731A00217F82&0&2006&17.07.2007&Latest"

unzip data-source/postcodes/2923030001poa06aaust.zip -d data-source/postcodes

