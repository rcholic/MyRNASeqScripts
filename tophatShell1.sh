InputFolder=/Volumes/PromiseDisk/Jimeno_Lab_NGS_Data/jimeno/Steve/RNASeq_data_from_David/fastq_Steve_Erlotinib_Resistance/fastq1_1

OutputFolder=../tophat1_1
mkdir -p $OutputFolder

genome=~/RNASeq_Pipeline/bowtie_indicies/hg19/hg19

for file in $(ls $InputFolder/*.fastq.*);do

	filename=$(basename "$file")
	extension="${filename##*.}"
	filename="${filename%.*}"
	filename="${filename%.*}"

	echo "filename is $filename"


	#run tophat on the paired-ended samples
	mkdir -p $OutputFolder/$filename
	
	tophat -p 7 \
	--bowtie1 \
	-z 0 \
	--library-type fr-unstranded \
	--GTF $genome.gtf \
	--read-mismatches 3 \
	--read-edit-dist 3 \
	--segment-mismatches 2 \
	--segment-length 25 \
	-o $OutputFolder/$filename \
	$genome $file 
	
	

done
