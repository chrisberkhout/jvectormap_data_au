# Australian postcode and suburb data for jVectorMap

This repository records the process and results of preparing Australian
suburb and postcode data (particularly for Melbourne and Sydney) for use with
[jVectorMap](http://jvectormap.com/).

## Get it

    git clone git://github.com/chrisberkhout/jvectormap_data_au.git 
    cd jvectormap_data_au
    git submodule init && git submodule update

## See the results

    open html/*

## Regenerate map data

This assumes Mac, but the scripts shouldn't be hard to adjust for other
UNIX systems.

### Download the source data

    ls ./fetch-* | xargs -n1 bash -x

### Install Python dependencies

The jVectorMap conversion script requires Python and some libraries to be
installed. I did this using [homebrew](https://github.com/mxcl/homebrew/)
to get [GDAL](http://www.gdal.org/) support and the default Mac Python
installation to install the required Python libraries and run the script.
The sequence of commands are documented in a shell script, but I advise
reading it and performing the steps manually, rather than just running it:

    cat ./setup-python.sh

### Generate the jVectorMap data

    ls ./generate-* | xargs -n1 bash -x

## Codes files

The files under `data-codes/` are tab separated records that map region codes
to names. When using a codes file, the jVectorMap converter script crashes
if the codes file is missing the code of a geometry present in the source
data. I have forked the converter script (as `jvectormap-fork/convertor.py`)
so that if a codes file is specified, only the geometries listed in it will
be output.

## Convertor fork

In addition to allowing codes files to be used to select with geometries
to include in the output, the fork fixes a bug which caused only one of
several identically named geometries to be output (because a Dictionary of
them was being keyed on name (which is not unique) instead of code (which
is).

Most of the scripts use the fork rather than the original script from
jVectorMap.

## Data

The data is from 2006 (except where marked 2011), from the Australian 
Bureau of Statistics. The suburb areas are coded according to State 
Suburb (SSC) censis divisions. For more information on the data, follow
the links in the `fetch-*` scripts.

If you'd like to explore the source data (eg. for inspecting metadata or
selecting a range of areas to include in a new codes file), I highly
recommend [Quantum GIS](http://www.qgis.org/). It can be installed with
homebrew:

    brew update
    brew tap homebrew/science
    brew install libspatialite # this dependency forgotten in qgis recipe
    brew install qgis

[Opening shapefiles](http://hub.qgis.org/wiki/quantum-gis/Opening_vector_files),
[selecting features](http://qgis.spatialthoughts.com/2012/02/tutorial-selecting-multiple-features-in.html) and
[exporting metadata](http://osgeo-org.1560.n6.nabble.com/copying-selected-feature-information-td4978771.html#a4978778)
is all pretty easy.

## Output quality

I've included scripts to generate national-level postcode and suburb data, but
they don't look good. They could be improved, but data of this detail is
probably not a good fit for jVectorMap.

The map data files generated may be a little on the large side. This could be
improved by tweaking the simplification parameters of the conversion script.

## Style and interactivity

Take a look at `html/postcodes-mel-interactive.html` for an example of coloring
based on data and handling clicks. Theres lots more that can be done with
interactivity in jVectorMap.

