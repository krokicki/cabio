ALTER TABLE ZSTG_GENE_IDENTIFIERS
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_GENE_IDENTIFIERS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE_IDENTIFIERS  (Table) 
--
CREATE TABLE ZSTG_GENE_IDENTIFIERS ( GENE_ID NUMBER NOT NULL, DATA_SOURCE NUMBER NOT NULL, IDENTIFIER VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (GENE_ID, DATA_SOURCE, IDENTIFIER) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


