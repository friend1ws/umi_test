#! /bin/env bash

REFERENCE=~/star_ref

/usr/local/bin/STAR \
    --genomeDir ${REFERENCE} \
    --readFilesIn pbmc_10k_v3_S1_R2.fastq.gz pbmc_10k_v3_S1_R1.fastq.gz \
    --outFileNamePrefix ~/output/pbmc_10k_v3_S1_ \
    --readFilesCommand gunzip -c \
    --soloType Droplet \
    --soloCBwhitelist whitelist_1.txt \
    --soloCBlen 16 --soloUMIstart 17 --soloUMIlen 12 \
    --runThreadN 12 # --outSAMstrandField intronMotif --outSAMunmapped Within --alignMatesGapMax 500000 --alignIntronMax 500000 --alignSJstitchMismatchNmax -1 -1 -1 -1 --outSJfilterDistToOtherSJmin 0 0 0 0 --outSJfilterOverhangMin 12 12 12 12 --outSJfilterCountUniqueMin 1 1 1 1 --outSJfilterCountTotalMin 1 1 1 1 --chimSegmentMin 12 --chimJunctionOverhangMin 12 # --outSAMtype BAM Unsorted
