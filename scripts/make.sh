#!/bin/bash

# Exit if anything errors
set -e

source doc/version.conf
export SPEC_VERSION

source config.sh

docker pull docker.sdlocal.net/csvw/metadata2rst:release
docker pull stratdat/sphinx:production
docker pull stratdat/sphinx-html2pdf:production

docker run --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst:release \
  --meta=${METADATA_FILE}

# make example zip and xlsx Files
echo "Making example files"
pushd .
cd doc/_static/example-files
rm -fv *.zip
zip PMHC-4-0-combined.zip combined/*
zip PMHC-4-0-intake.zip intake/*
zip PMHC-4-0-treatment.zip treatment/*
zip PMHC-4-0-combined-delete.zip combined-delete/*
popd

# make zip file
scripts/metadata2zip.sh ${SPEC_ZIP_FILE}
# mv new zip to data-specification folder
mv ${SPEC_ZIP_FILE} doc/_static/

pushd .
cd doc

rm -rf _data build
#cp -rf ../data _data

GIT_VERSION=$(git describe --tags --always)

echo "Building PDF"
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx:production make singlehtml

popd

echo "Optimising images"
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  --workdir /mnt/workdir/doc/build/singlehtml/_images \
  stratdat/sphinx-html2pdf:production \
  find . -name *.png -exec pngquant --force --output {} 8 {} \;

docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx-html2pdf:production \
  /mnt/workdir/scripts/make-pdf.pl \
  --spec-name "${SPEC_NAME}-${SPEC_VERSION}" \
  --doc-dir   "/mnt/workdir/doc"

pushd .
cd doc

docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx:production make html

popd
