#!/bin/bash

CLEAN_ARCHIVE="no"
HELPFLAG="no"

while getopts "fh" options; do
  case $options in
    f) CLEAN_ARCHIVE="yes";;
    h) HELPFLAG="yes";;
  esac
done

if [ "$HELPFLAG" == "yes" ]; then
  echo "./clean_support.sh       -f   # clean the user files in the archive directory as well"
  exit 0
fi


if [ "$CLEAN_ARCHIVE" == "yes" ]; then
  echo "Cleaning archived env setup files..."
  rm -f  archive/*environment_setup*
  echo "Cleaning archived GSL tar balls..."
  rm -rf archive/*gsl*tar.gz
  echo "Cleaning archived HepMC tar balls..."
  rm -rf archive/*HepMC*tar.gz
  # DO NOT remove the log4cpp source bundle we need to install.
  echo "Cleaning archived log4cpp tar balls..." 
  rm -rf archive/1*log4cpp.tgz
  echo "Cleaning archived LHAPDF tar balls..."
  rm -rf archive/*lhapdf*tar.gz
  echo "Cleaning archived Pythia8 tar balls..."
  rm -rf archive/*pythia8*.tgz
fi

echo "Cleaning env setup file..."
rm -f  environment_setup.sh
echo "Cleaning GSL..."
rm -rf gsl
echo "Cleaning HepMC..."
rm -rf hepmc
echo "Cleaning LHAPDF..."
rm -rf lhapdf
echo "Cleaning log4cpp..."
rm -rf log4cpp
echo "Cleaning Pythia6..."
rm -rf pythia6
echo "Cleaning Pythia8..."
rm -rf pythia8*
