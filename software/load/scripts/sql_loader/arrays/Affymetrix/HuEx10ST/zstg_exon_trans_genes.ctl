LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/temp/arrays/Affymetrix/HuEx10ST/HuEx-1_0-st-v2.genes.dat'

APPEND
 
INTO TABLE ZSTG_EXON_TRANS_GENES
 
REENABLE DISABLED_CONSTRAINTS 
FIELDS TERMINATED BY "|"
 
(
TRANSCRIPT_CLUSTER_ID,
UNIGENE_ID
)