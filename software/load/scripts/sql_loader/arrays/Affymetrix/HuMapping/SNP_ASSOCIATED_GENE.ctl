LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/temp/arrays/Affymetrix/HuMapping/associated_gene_Mapping50K_Hind240.dat'
INFILE '$CABIO_DATA_DIR/temp/arrays/Affymetrix/HuMapping/associated_gene_Mapping50K_Xba240.dat'
INFILE '$CABIO_DATA_DIR/temp/arrays/Affymetrix/HuMapping/associated_gene_Mapping250K_Nsp.dat'
INFILE '$CABIO_DATA_DIR/temp/arrays/Affymetrix/HuMapping/associated_gene_Mapping250K_Sty.dat'
 
APPEND
 
INTO TABLE SNP_ASSOCIATED_GENE 
 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
 
(PROBESET_ID,
  ACCESSION,
  ASSOCIATION_POSITION,
  DISTANCE,
  UNIGENE_ID,
  ASSOCIATED_GENE_SYMBOL,
  ASSOCIATED_GENE_NAME)