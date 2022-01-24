#!/bin/bash

PATH=/nfsfolder/Montage/bin:$PATH
export PATH

folderLoc=/nfsfolder/distributedComp/1

umask 000

#mArchiveList 2mass j "NGC 3372" 2.8 2.8 $folderLoc/archive.tbl

#rm -rf $folderLoc/raw $folderLoc/projected $folderLoc/diffs $folderLoc/corrected
mkdir  $folderLoc/projected $folderLoc/diffs $folderLoc/corrected
#mCoverageCheck $folderLoc/archive.tbl $folderLoc/remote.tbl -header /nfsfolder/distributedComp/region.hdr
#mArchiveExec -p $folderLoc/raw $folderLoc/remote.tbl
mImgtbl $folderLoc/raw $folderLoc/rimages.tbl
mProjExec -q -p $folderLoc/raw $folderLoc/rimages.tbl /nfsfolder/distributedComp/region.hdr $folderLoc/projected $folderLoc/stats.tbl
mImgtbl $folderLoc/projected $folderLoc/pimages.tbl
mOverlaps $folderLoc/pimages.tbl $folderLoc/diffs.tbl
mDiffFitExec -p $folderLoc/projected $folderLoc/diffs.tbl /nfsfolder/distributedComp/region.hdr $folderLoc/diffs $folderLoc/fits.tbl
mBgModel $folderLoc/pimages.tbl $folderLoc/fits.tbl $folderLoc/corrections.tbl
mBgExec -p $folderLoc/projected $folderLoc/pimages.tbl $folderLoc/corrections.tbl $folderLoc/corrected
mImgtbl $folderLoc/corrected $folderLoc/cimages.tbl
#mAdd -p $folderLoc/corrected $folderLoc/cimages.tbl /nfsfolder/distributedComp/region.hdr $folderLoc/jband.fits
