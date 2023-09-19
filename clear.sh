#!/bin/bash

if [ -e "09_SourceHanSerifSC.zip" ] ; then
    rm 09_SourceHanSerifSC.zip
fi
if [ -d "Open_Data" ] ; then
    rm -r Open_Data
fi