#!/bin/bash -x
set -e

# - This assumes you're using homebrew on Mac.
# - The PYTHONPATH setup needs to be manually added to you
#   bash_profile or equivalent to keep working.
# - I've noted version numbers I got in a comment after each item.

brew update && brew install gdal # /usr/local/Cellar/gdal/1.9.1
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

sudo easy_install pip

sudo pip install argparse # argparse-1.2.1-py2.7
sudo pip install GDAL # GDAL-1.9.1-py2.7
sudo pip install anyjson # anyjson-0.3.3-py2.7
sudo pip install shapely # __version__ = "1.2.15"

