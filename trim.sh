#!/bin/bash
  for file in $(ls ../fastq1_1/*.gz); do
      echo $file
      trim_galore --fastqc -o ../fastq1_1_trim $file
  done

