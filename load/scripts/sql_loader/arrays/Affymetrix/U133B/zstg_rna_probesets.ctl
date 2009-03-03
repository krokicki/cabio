LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/arrays/Affymetrix/U133B/HG-U133B.annot.csv'
 
APPEND
 
INTO TABLE ZSTG_RNA_Probesets_TMP 
 
REENABLE DISABLED_constraints 
FIELDS TERMINATED BY "," optionally enclosed by '"'
TRAILING NULLCOLS 
(PROBE_SET_ID,
  geneCHIP_ARRAY,
  SPECIES_SCIENTIFIC_NAME,
  ANNOTATION_DATE,
  sequence_type,
  SEQUENCE_source,
  transcript_ID,
  target_DESCRIPTION		char(4000),
  REPRESENTATIVE_PUBLIC_ID,
  ARCHIVAL_UNIgene_CLUSTER,
  UNIgene_ID,
  GENOME_VERSION,
  ALIGNMENTS			char(2000),
  gene_TITLE			char(30000),
  gene_SYMBOL			char(30000),
  CHROMOSOMAL_LOCATION		char(30000),
  UNIgene_CLUSTER_TYPE,
  ENSEMBL			char(2000),
  ENTREZ_gene			char(1000),
  SWISSPROT char(30000),
  EC,
  OMIM,
  REFSEQ_PROTEIN_ID char(4000),
  REFSEQ_transcript_ID char(4000),
  FLYBASE,
  AGI,
  WORMBASE,
  MGI_NAME,
  RGD_NAME,
  SGD_ACCESSION_NUMBER,
  GO_BIOLOGICAL_PROCESS char(30000),
  GO_CELLULAR_COMPONENT char(30000),
  GO_MOLECULAR_FUNCTION char(30000),
  PATHWAY char(30000),
  INTERPRO char(30000),
  TRANS_MEMBRANE char(30000),
  QTL,
  ANNOTATION_DESCRIPTION		char(4000),
  ANNOTATION_transcript_CLUSTER		char(30000),
  transcript_ASSIGNMENTS		char(30000),
  ANNOTATION_NOTES			char(30000))


