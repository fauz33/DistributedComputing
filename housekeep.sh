#!/bin/bash

PATH=/nfsfolder/Montage/bin:$PATH
export PATH

shopt -s extglob
cd /nfsfolder/distributedComp/1/
rm -rf !(*.job|*.sh|archive.tbl|remote.tbl|raw)

cd /nfsfolder/distributedComp/2/
rm -rf !(*.job|*.sh|archive.tbl|remote.tbl|raw)

cd /nfsfolder2/distributedComp/3/
rm -rf !(*.job|*.sh|archive.tbl|remote.tbl|raw)

cd /nfsfolder/distributedComp/4/
rm -rf !(*.job|*.sh|archive.tbl|remote.tbl|raw)

shopt -u extglob
