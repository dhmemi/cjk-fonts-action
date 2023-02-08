#!/bin/bash

hasRegular= [ -e "$HOME/.fonts/SourceHanSansHWSC-Regular.otf" ]
hasBold= [ -e "$HOME/.fonts/SourceHanSansHWSC-Bold.otf"]

if [ !$hasRegular -o !$hasBold ] ; then

  # Download
  while getopts 'f:' flag; do
    case "${flag}" in
      f) flags="${OPTARG}" ;;
      *) print_usage
        exit 1 ;;
    esac
  done

  wget -O SourceHanSansHWSC.zip ${flags} https://github.com/adobe-fonts/source-han-sans/releases/download/2.004R/SourceHanSansHWSC.zip
  unzip SourceHanSansHWSC.zip

  # Copy fonts to font directory
  cp -i OTF/SimplifiedChineseHW/SourceHanSansHWSC-Regular.otf $HOME/.fonts
  cp -i OTF/SimplifiedChineseHW/SourceHanSansHWSC-Bold.otf $HOME/.fonts
fi
