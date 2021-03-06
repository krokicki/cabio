/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_RNA_PROBESETS_TMP CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_RNA_PROBESETS_TMP  (Table) 
--
CREATE TABLE ZSTG_RNA_PROBESETS_TMP ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, SPECIES_SCIENTIFIC_NAME VARCHAR2(200 BYTE) NOT NULL, ANNOTATION_DATE VARCHAR2(20 BYTE) NOT NULL, SEQUENCE_TYPE VARCHAR2(20 BYTE) NOT NULL, SEQUENCE_SOURCE VARCHAR2(50 BYTE) NOT NULL, TRANSCRIPT_ID VARCHAR2(100 BYTE) NOT NULL, TARGET_DESCRIPTION VARCHAR2(2000 BYTE) NOT NULL, REPRESENTATIVE_PUBLIC_ID VARCHAR2(100 BYTE) NOT NULL, ARCHIVAL_UNIGENE_CLUSTER VARCHAR2(100 BYTE) NOT NULL, UNIGENE_ID VARCHAR2(2500 BYTE) NOT NULL, GENOME_VERSION VARCHAR2(50 BYTE) NOT NULL, ALIGNMENTS VARCHAR2(2000 BYTE) NOT NULL, GENE_TITLE CLOB NOT NULL, GENE_SYMBOL VARCHAR2(4000 BYTE) NOT NULL, CHROMOSOMAL_LOCATION VARCHAR2(1000 BYTE) NOT NULL, UNIGENE_CLUSTER_TYPE VARCHAR2(50 BYTE) NOT NULL, ENSEMBL VARCHAR2(1000 BYTE) NOT NULL, ENTREZ_GENE VARCHAR2(500 BYTE) NOT NULL, SWISSPROT CLOB NOT NULL, EC VARCHAR2(200 BYTE) NOT NULL, OMIM VARCHAR2(500 BYTE) NOT NULL, REFSEQ_PROTEIN_ID VARCHAR2(4000 BYTE) NOT NULL, REFSEQ_TRANSCRIPT_ID VARCHAR2(4000 BYTE) NOT NULL, FLYBASE VARCHAR2(20 BYTE) NOT NULL, AGI VARCHAR2(20 BYTE) NOT NULL, WORMBASE VARCHAR2(20 BYTE) NOT NULL, MGI_NAME VARCHAR2(20 BYTE) NOT NULL, RGD_NAME VARCHAR2(20 BYTE) NOT NULL, SGD_ACCESSION_NUMBER VARCHAR2(20 BYTE) NULL, GO_BIOLOGICAL_PROCESS CLOB NULL, GO_CELLULAR_COMPONENT CLOB NULL, GO_MOLECULAR_FUNCTION CLOB NULL, PATHWAY CLOB NULL, INTERPRO CLOB NULL, TRANS_MEMBRANE CLOB NULL, QTL VARCHAR2(100 BYTE) NULL, ANNOTATION_DESCRIPTION VARCHAR2(4000 BYTE) NULL, ANNOTATION_TRANSCRIPT_CLUSTER CLOB NULL, TRANSCRIPT_ASSIGNMENTS CLOB NULL, ANNOTATION_NOTES CLOB NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS LOB (GENE_TITLE) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (SWISSPROT) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (GO_BIOLOGICAL_PROCESS) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (GO_CELLULAR_COMPONENT) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (GO_MOLECULAR_FUNCTION) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (PATHWAY) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (INTERPRO) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (TRANS_MEMBRANE) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (ANNOTATION_TRANSCRIPT_CLUSTER) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (TRANSCRIPT_ASSIGNMENTS) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) LOB (ANNOTATION_NOTES) STORE AS ( TABLESPACE CABIO_MAP_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE ) NOCACHE NOPARALLEL MONITORING
/


