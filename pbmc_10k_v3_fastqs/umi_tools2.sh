#! /bin/bash

# umi_tools whitelist --stdin pbmc_10k_v3_S1_R1.fastq.gz --bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN --set-cell-number=10000 --log2stderr > whitelist.txt

NUM=$1

umi_tools extract --bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN --stdin pbmc_10k_v3_S1_R1.fastq_${NUM} --stdout pbmc_10k_v3_S1_R1_extracted.fastq_${NUM} --read2-in pbmc_10k_v3_S1_R2.fastq_${NUM} --read2-out pbmc_10k_v3_S1_R2_extracted.fastq_${NUM} --filter-cell-barcode --whitelist=whitelist.txt

