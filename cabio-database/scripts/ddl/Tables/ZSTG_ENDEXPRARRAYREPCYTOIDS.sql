DROP TABLE ZSTG_ENDEXPRARRAYREPCYTOIDS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_ENDEXPRARRAYREPCYTOIDS  (Table) 
--
CREATE TABLE ZSTG_ENDEXPRARRAYREPCYTOIDS ( ID NUMBER NOT NULL, CYTO_STOP VARCHAR2(250 BYTE) NULL, CYTOBANDID NUMBER NOT NULL, CHROMOSOME_ID NUMBER NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

