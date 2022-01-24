#!/bin/bash

PATH=/nfsfolder/Montage/bin:$PATH
export PATH

folderLoc=/nfsfolder/distributedComp/2

umask 000

mAdd -p $folderLoc/corrected $folderLoc/cimages.tbl /nfsfolder/distributedComp/region.hdr $folderLoc/hband.fits
