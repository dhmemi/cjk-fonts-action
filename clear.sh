#!/bin/bash

if [ -e "SourceHanSansHWSC.zip"] ; then
    rm SourceHanSansHWSC.zip  
fi
if [ -d "Open_Data"] ; then
    rm -r Open_Data
fi