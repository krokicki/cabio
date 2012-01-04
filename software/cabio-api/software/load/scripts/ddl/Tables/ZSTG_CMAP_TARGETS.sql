DROP TABLE ZSTG_CMAP_TARGETS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_CMAP_TARGETS  (Table) 
--
CREATE TABLE ZSTG_CMAP_TARGETS ( TARGET_ID NUMBER NOT NULL, GENE_ID NUMBER NOT NULL, ANOMALY VARCHAR2(30 BYTE) NULL, CANCER_TYPE VARCHAR2(30 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


