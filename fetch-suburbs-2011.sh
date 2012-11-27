#!/bin/bash -x
set -e

# Info on Australia geo data:
#   http://gis.stackexchange.com/questions/495/are-there-any-free-administrative-boundaries-available-as-shapefiles/506#506

# Source of this data:
#   http://abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/2923.0.30.0012006?OpenDocument

mkdir -p data-source/suburbs-2011

curl -L -o data-source/suburbs-2011/1270055003_ssc_2011_aust_shape.zip \
  "http://www.abs.gov.au/AUSSTATS/subscriber.nsf/log?openagent&1270055003_ssc_2011_aust_shape.zip&1270.0.55.003&Data%20Cubes&D68DFFC14D31F4E1CA2578D40013268D&0&July%202011&22.07.2011&Last"

unzip data-source/suburbs-2011/1270055003_ssc_2011_aust_shape.zip -d data-source/suburbs-2011

