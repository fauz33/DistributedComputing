#!/bin/bash

PATH=/nfsfolder/Montage/bin:$PATH
export PATH

folderLoc=/nfsfolder2/distributedComp/3

mAdd -p $folderLoc/corrected $folderLoc/cimages.tbl /nfsfolder/distributedComp/region.hdr $folderLoc/kband.fits
