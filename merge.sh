#!/usr/bin/env bash

# Download a zip from the first argument, merge into the directory specified by the second argument, and clean up
# Example:
#   bash merge-zip.sh ftp://ftp.ncbi.nih.gov/pub/jats/publishing/1.1/JATS-Publishing-1-1-MathML2-DTD.zip publishing/1.1

# download, unzip, and remove zip
NAME=$(basename -s .zip $1)
curl $1 > $NAME.zip
unzip -o $NAME.zip
rm $NAME.zip

# merge and remove directory
cp -fR $NAME/* $2/
rm -rf $NAME
#mv Publishing-Readme.txt $2/README.txt
