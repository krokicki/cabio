LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/temp/relative_clone/phylocMRNA.txt'
INFILE '$CABIO_DATA_DIR/temp/relative_clone/phylocEST.txt'
 
APPEND
 
INTO TABLE physical_location 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
( ACCNO filler,
  NUCLEIC_ACID_ID,
  CHROMOSOMAL_START_POSITION,
  CHROMOSOMAL_END_POSITION,
  chromosome_ID,
  ID SEQUENCE(MAX,1)
)

INTO TABLE location_tv 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
( ACCNO filler POSITION(1),
  NUCLEIC_ACID_ID,
  CHROMOSOMAL_START_POSITION filler,
  CHROMOSOMAL_END_POSITION filler,
  chromosome_ID,
  ID SEQUENCE(MAX,1)
)


INTO TABLE location_ch 
FIELDS TERMINATED BY "|"
TRAILING NULLCOLS
( ACCNO filler POSITION(1),
  NUCLEIC_ACID_ID,
  CHROMOSOMAL_START_POSITION,
  CHROMOSOMAL_END_POSITION,
  chromosome_ID,
  FEATURE_TYPE,
  ASSEMBLY CONSTANT "reference",
  DISCRIMINATOR CONSTANT "NucleicAcidPhysicalLocation",
  ID SEQUENCE(MAX,1)
)
