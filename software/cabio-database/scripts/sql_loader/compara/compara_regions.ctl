LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/compara/regions.txt'
 
REPLACE
 
INTO TABLE ZSTG_COMPARA_REGIONS

FIELDS TERMINATED BY X'9'
 
TRAILING NULLCOLS
(METHOD_ID,
CHROMOSOME_NAME,
START_LOC,
END_LOC,
SCORE,
PVALUE)
