#! /bin/bash

# zcat ${1}.gz | split -l 200000000 -d --filter='gzip > $FILE.gz' - ${1}_ 
zcat ${1}.gz | split -l 200000000 -d - ${1}_

