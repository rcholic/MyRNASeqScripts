#!/bin/bash

#find ./cufflinks -name transcripts.gtf > assembly_list.txt

cuffmerge \
--ref-gtf /export/home/wangt/bowtie_indicies/hg19/hg19.gtf \
-p 10 \
--ref-sequence /export/home/wangt/bowtie_indicies/hg19/hg19.fa \
-o ../cuffmerge \
./transcripts_assembly.txt \
> ../cuffmerge/cuffmerge_20140908.log
