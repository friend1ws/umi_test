#! /bin/bash

# umi_tools whitelist --stdin pbmc_10k_v3_S1_R1.fastq.gz --bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN --set-cell-number=10000 --log2stderr > whitelist.txt

umi_tools extract --bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN --stdin pbmc_10k_v3_S1_R1.fastq.gz --stdout pbmc_10k_v3_S1_R1_extracted.fastq.gz --read2-in pbmc_10k_v3_S1_R2.fastq.gz --read2-out pbmc_10k_v3_S1_R2_extracted.fastq.gz --filter-cell-barcode --whitelist=whitelist.txt

