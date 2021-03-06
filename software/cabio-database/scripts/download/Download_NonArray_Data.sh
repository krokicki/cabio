#!/bin/sh
echo "Starting download of data sources"
echo "\n\nDownloading Human and Mouse Cytoband" 
sh download_HumanAndMouseCytobandData_UCSC.sh  
echo "\n\nDownloading NCBI SNP Data" 
sh download_SNPData_NCBI.sh  
echo "\n\nDownloading TSC SNP Data" 
sh download_SNPData_TSC.sh &
echo "\n\nDownloading Uniprot Data" 
sh download_ProteinData_Uniprot.sh  &
echo "\n\nDownloading Entrez to Unigene, OMIM Mapping DataSet" 
sh download_GeneIdMappingsData_NCBI.sh & 
echo "\n\nDownloading Human and Mouse EST" 
sh download_ESTAnnotationsData_UCSC.sh &
echo "\n\nDownloading Human and Mouse MRNA" 
sh download_Mrna_UCSC.sh &
echo "\n\nDownloading Human and Mouse Unigene" 
sh download_Unigene_NCBI.sh & 
echo "\n\nDownloading CTEP data" 
sh download_CTEPData.sh &
echo "\n\nDownloading Marker data from UniSTS" 
sh download_Marker.sh &
echo "\nDownloading gene alias data \n"
sh download_GeneAlias.sh &
#PID data is now manually downloaded
#echo "\nDownloading PID data \n"
#sh download_PID.sh &
#Illumina and Agilent data are now manually downloaded
#echo "\nDownloading Illumina Agilent data \n"
#sh download_Illumina_Agilent.sh &
echo "\nDownloading Drugbank data \n"
sh download_Drugbank.sh &
echo "\nDownloading Compara data \n"
perl download_Compara.pl $CABIO_DATA_DIR/compara
wait
echo "\n\nFinished downloading UCSC_Cytoband, NCBI_SNP, TSC_SNP, Uniprot, NCBI_GeneIdMapping, UCSC_EST, UCSC_mRNA, NCBI_Unigene, CTEP, UniSTS, gene alias, Drugbank and Compara data"
