#!/bin/bash


OutputFolder=NewCuffdiff/Cuffdiff1
mkdir -p $OutputFolder

cuffdiff \
-p 6 \
-u ../cuffmerge/merged.gtf \
-b /export/home/wangt/bowtie_indicies/hg19/hg19.fa \
-o $OutputFolder \
-L TU167_E1,TU167_E2,TU167_P1,TU167_P2 \
../tophat1/TU167_E1_GTGGCC_L007_R1_001/accepted_hits.bam,../tophat1/TU167_E1_GTGGCC_L008_R1_001/accepted_hits.bam \
../tophat1/TU167_E2_GTTTCG_L008_R1_001/accepted_hits.bam,../tophat3/TU167_E2_GTTTCG_L007_R1_001_trimmed/accepted_hits.bam \
../tophat1/TU167_P1_ATTCCT_L007_R1_001/accepted_hits.bam,../tophat1/TU167_P1_ATTCCT_L008_R1_001/accepted_hits.bam \
../tophat1/TU167_P2_GATCAG_L007_R1_001/accepted_hits.bam,../tophat1/TU167_P2_GATCAG_L008_R1_001/accepted_hits.bam > $OutputFolder/cuffdiff1.log
