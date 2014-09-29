#!/bin/bash

InputDir=../tophat1
OutputDir=../Cufflinks
Genome="/export/home/wangt/bowtie_indicies/hg19/hg19"

for file in $(find $InputDir -name 'accepted_hits.bam'); do
   filename=$(echo $file | cut -f3 -d\/)

   echo $filename
   echo $file
   mkdir -p $OutputDir/$filename

cufflinks -p 6 -G $Genome.gtf -g $Genome.gtf --frag-bias-correct $Genome.fa --library-type fr-unstranded --min-isoform-fraction 0.1 --min-frags-per-transfrag 50 -o $OutputDir/$filename $file > $OutputDir/$filename.log

echo "finished $filename"

done
