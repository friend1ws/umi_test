#! /bin/env bash

REFERENCE=~/star_ref

OUTPUT_PREF=~/output2/pbmc_10k_v3_S1_

<<_
/usr/local/bin/STAR \
    --genomeDir ${REFERENCE} \
    --readFilesIn pbmc_10k_v3_S1_R2_extracted.fastq.gz \
    --outFileNamePrefix ~/output2/pbmc_10k_v3_S1_ \
    --readFilesCommand gunzip -c \
    --runThreadN 15 --outSAMstrandField intronMotif --outSAMunmapped Within --alignMatesGapMax 500000 --alignIntronMax 500000 --alignSJstitchMismatchNmax -1 -1 -1 -1 --outSJfilterDistToOtherSJmin 0 0 0 0 --outSJfilterOverhangMin 12 12 12 12 --outSJfilterCountUniqueMin 1 1 1 1 --outSJfilterCountTotalMin 1 1 1 1 --chimSegmentMin 12 --chimJunctionOverhangMin 12 --outSAMtype BAM Unsorted
_


samtools sort \
    -T ${OUTPUT_PREF}Aligned.sortedByCoord.out \
    -@ 15 -m 3G \
    ${OUTPUT_PREF}Aligned.out.bam \
    -O bam > ${OUTPUT_PREF}Aligned.sortedByCoord.out.bam

samtools index \
    ${OUTPUT_PREF}Aligned.sortedByCoord.out.bam

