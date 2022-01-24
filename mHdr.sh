#!/bin/bash

PATH=/nfsfolder/Montage/bin:$PATH
export PATH

date
rm region.hdr
rm errorfilemHdr
rm outputfilemHdr
rm outmHdr.log

mHdr "NGC 3372" 2.0 region.hdr
