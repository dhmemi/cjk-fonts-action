#!/bin/bash

# Download
while getopts 'f:' flag; do
  case "${flag}" in
    f) flags="${OPTARG}" ;;
    *) print_usage
      exit 1 ;;
  esac
done

wget -O 09_SourceHanSerifSC.zip ${flags} https://github.com/adobe-fonts/source-han-serif/releases/download/2.002R/09_SourceHanSerifSC.zip
unzip 09_SourceHanSerifSC.zip

# Copy fonts to font directory
cp -i OTF/*.otf $HOME/share/fonts/SourceHanSerif
