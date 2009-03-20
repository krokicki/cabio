DROP TABLE ZSTG_STARTCYTOIDS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_STARTCYTOIDS  (Table) 
--
CREATE TABLE ZSTG_STARTCYTOIDS ( GENE_ID NUMBER NOT NULL, START_CYTOBAND VARCHAR2(50 BYTE) NULL, ID NUMBER NOT NULL, CHROMOSOME_ID NUMBER NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

