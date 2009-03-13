DROP TABLE ZSTG_PATHWAYS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PATHWAYS  (Table) 
--
CREATE TABLE ZSTG_PATHWAYS ( ORGANISM VARCHAR2(2500 BYTE) NULL, PATHWAY_ID VARCHAR2(2500 BYTE) NOT NULL, SUBNET VARCHAR2(2500 BYTE) NOT NULL, LONGNAME VARCHAR2(2500 BYTE) NOT NULL, SHORTNAME VARCHAR2(2500 BYTE) NOT NULL, SOURCE_ID VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

