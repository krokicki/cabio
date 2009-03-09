DROP TABLE ZSTG_DISEASEONTOLOGY_CGID CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_DISEASEONTOLOGY_CGID  (Table) 
--
CREATE TABLE ZSTG_DISEASEONTOLOGY_CGID ( ID NUMBER NOT NULL, DISEASEONTOLOGY VARCHAR2(2500 BYTE) NOT NULL, EVS_ID VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT ) MONITORING
/


