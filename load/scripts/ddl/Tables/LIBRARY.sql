ALTER TABLE LIBRARY
 DROP PRIMARY KEY CASCADE
/
DROP TABLE LIBRARY CASCADE CONSTRAINTS PURGE
/

--
-- LIBRARY  (Table) 
--
CREATE TABLE LIBRARY ( LIBRARY_ID NUMBER NULL, CLONES_TO_DATE NUMBER NULL, IDS_LIB_TISSUE_SAMPLE VARCHAR2(70 BYTE) NULL, IMAGE_LEGEND VARCHAR2(250 BYTE) NULL, KEYWORD VARCHAR2(400 BYTE) NULL, LAB_HOST VARCHAR2(80 BYTE) NULL, LIBRARY_NAME VARCHAR2(250 BYTE) NULL, R_SITE_1 VARCHAR2(240 BYTE) NULL, R_SITE_2 VARCHAR2(240 BYTE) NULL, SEQUENCES_TO_DATE NUMBER NULL, DESCRIPTION VARCHAR2(4000 BYTE) NULL, CGAP_LIBRARY_ID NUMBER NULL, LIBRARY_TYPE VARCHAR2(10 BYTE) NULL, CREATE_DATE DATE NULL, LIBRARY_PROTOCOL NUMBER NULL, TISSUE_PROTOCOL NUMBER NULL, TISSUE_ID NUMBER NULL, TAXON_ID NUMBER NULL, UNIGENE_ID NUMBER NULL, VECTOR VARCHAR2(100 BYTE) NULL, VECTOR_TYPE VARCHAR2(100 BYTE) NULL, PRODUCER VARCHAR2(200 BYTE) NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CHECK ("LIBRARY_ID" IS NOT NULL) DISABLE, CHECK ("KEYWORD" IS NOT NULL) DISABLE, CHECK ("LIBRARY_NAME" IS NOT NULL) DISABLE, CHECK ("SEQUENCES_TO_DATE" IS NOT NULL) DISABLE, CHECK ("LIBRARY_PROTOCOL" IS NOT NULL) DISABLE, CHECK ("TISSUE_PROTOCOL" IS NOT NULL) DISABLE, CHECK ("TISSUE_ID" IS NOT NULL) DISABLE, CHECK ("TAXON_ID" IS NOT NULL) DISABLE, CHECK ("UNIGENE_ID" IS NOT NULL) DISABLE, CONSTRAINT LIBPK PRIMARY KEY (LIBRARY_ID) DISABLE, CONSTRAINT LIBBIGID UNIQUE (BIG_ID) DISABLE, UNIQUE (CLONES_TO_DATE, IDS_LIB_TISSUE_SAMPLE, IMAGE_LEGEND, KEYWORD, LIBRARY_NAME, LAB_HOST, R_SITE_1, R_SITE_2, SEQUENCES_TO_DATE, DESCRIPTION, CGAP_LIBRARY_ID, LIBRARY_TYPE, CREATE_DATE, LIBRARY_PROTOCOL, TISSUE_PROTOCOL, TISSUE_ID, TAXON_ID, UNIGENE_ID, VECTOR, VECTOR_TYPE, PRODUCER) DISABLE ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


