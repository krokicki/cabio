LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/temp/arrays/Agilent/aCGH244K/phyloc.dat'


APPEND
 
INTO TABLE ZSTG_CGH_AGILENT 
 
REENABLE DISABLED_CONSTRAINTS 
FIELDS TERMINATED BY "%|"
TRAILING NULLCOLS
 
(
PROBE_SET_ID,
TARGET_ID,
GENE_SYMBOL,
GENE_NAME,
ACCESSIONS char(1000),
DESCRIPTION char(1000),
CHROMOSOME_NUMBER, 
PROBE_START,
PROBE_END
)
