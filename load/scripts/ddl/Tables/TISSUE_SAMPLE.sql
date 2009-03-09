DROP TABLE TISSUE_SAMPLE CASCADE CONSTRAINTS PURGE
/

--
-- TISSUE_SAMPLE  (Table) 
--
CREATE TABLE TISSUE_SAMPLE ( TISSUE_ID NUMBER NOT NULL, TISSUE_NAME VARCHAR2(40 BYTE) NOT NULL, ORGAN VARCHAR2(100 BYTE) NOT NULL, SEX VARCHAR2(50 BYTE) NULL, SUPPLIER VARCHAR2(150 BYTE) NULL, HISTOLOGY VARCHAR2(50 BYTE) NOT NULL, DESCRIPTION VARCHAR2(500 BYTE) NULL, TISSUE_TYPE VARCHAR2(200 BYTE) NULL, CELL_TYPE VARCHAR2(100 BYTE) NULL, CELL_LINE VARCHAR2(100 BYTE) NULL, DEVELOPMENT_STAGE VARCHAR2(255 BYTE) NULL, SAMPLE_ID NUMBER NOT NULL, TISSUE_PROTOCOL NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT TISSSAMP UNIQUE (BIG_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


