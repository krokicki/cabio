LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/compara/species.txt'
 
REPLACE
 
INTO TABLE ZSTG_COMPARA_SPECIES

FIELDS TERMINATED BY X'9'
 
TRAILING NULLCOLS
(METHOD_ID,
SCIENTIFIC_NAME,
COMMON_NAME,
ASSEMBLY)
