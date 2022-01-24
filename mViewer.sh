#!/bin/bash

PATH=/nfsfolder/Montage/bin:$PATH
export PATH

folderLoc=/nfsfolder/distributedComp/4

mShrink /nfsfolder2/distributedComp/3/kband.fits $folderLoc/ksmall.fits 5
mShrink /nfsfolder/distributedComp/2/hband.fits $folderLoc/hsmall.fits 5
mShrink /nfsfolder/distributedComp/1/jband.fits $folderLoc/jsmall.fits 5

mViewer -t 2 \
        -red   $folderLoc/ksmall.fits 0s max gaussian-log \
        -green $folderLoc/hsmall.fits 0s max gaussian-log \
        -blue  $folderLoc/jsmall.fits 0s max gaussian-log \
        -out   $folderLoc/color_mosaic.png

date
