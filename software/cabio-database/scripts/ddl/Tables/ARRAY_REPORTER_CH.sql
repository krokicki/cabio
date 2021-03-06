/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ARRAY_REPORTER_CH
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ARRAY_REPORTER_CH CASCADE CONSTRAINTS PURGE
/

--
-- ARRAY_REPORTER_CH  (Table) 
--
--  Dependencies: 
--   GENE_TV (Table)
--   NUCLEIC_ACID_SEQUENCE (Table)
--   MICROARRAY (Table)
--   TRANSCRIPT (Table)
--   SNP_TV (Table)
--
CREATE TABLE ARRAY_REPORTER_CH ( ID NUMBER NOT NULL, NAME VARCHAR2(500 BYTE) NOT NULL, MICROARRAY_ID NUMBER NOT NULL, DISCRIMINATOR VARCHAR2(500 BYTE) NOT NULL, SEQUENCE_TYPE VARCHAR2(500 BYTE) NULL, SEQUENCE_SOURCE VARCHAR2(2500 BYTE) NULL, TARGET_ID VARCHAR2(2500 BYTE) NULL, TARGET_DESCRIPTION VARCHAR2(2500 BYTE) NULL, PHAST_CONSERVATION VARCHAR2(500 BYTE) NULL, MANUFACTURER_PSR_ID VARCHAR2(500 BYTE) NULL, PROBE_COUNT VARCHAR2(500 BYTE) NULL, STRAND VARCHAR2(500 BYTE) NULL, SNP_ID NUMBER NULL, NAS_ID NUMBER NULL, GENE_ID NUMBER NULL, TRANSCRIPT_ID NUMBER NULL, EXON_ID NUMBER NULL, BIG_ID VARCHAR2(500 BYTE) NULL, CONSTRAINT ARCHPK PRIMARY KEY (ID), CONSTRAINT ARREPBIGID UNIQUE (BIG_ID), UNIQUE (NAME, MICROARRAY_ID, DISCRIMINATOR) DISABLE, CONSTRAINT ARCHFK1 FOREIGN KEY (GENE_ID) REFERENCES GENE_TV (GENE_ID), CONSTRAINT ARCHFK2 FOREIGN KEY (NAS_ID) REFERENCES NUCLEIC_ACID_SEQUENCE (ID), CONSTRAINT ARCHFK3 FOREIGN KEY (MICROARRAY_ID) REFERENCES MICROARRAY (ID), CONSTRAINT ARREPCHFK5 FOREIGN KEY (TRANSCRIPT_ID) REFERENCES TRANSCRIPT (ID), CONSTRAINT ARREPCHSNPFK FOREIGN KEY (SNP_ID) REFERENCES SNP_TV (ID) ) TABLESPACE CABIO_FUT NOLOGGING PARTITION BY RANGE (MICROARRAY_ID) ( PARTITION MID7 VALUES LESS THAN (1) LOGGING TABLESPACE CABIO_FUT, PARTITION MID1 VALUES LESS THAN (2) LOGGING TABLESPACE CABIO_FUT, PARTITION MID8 VALUES LESS THAN (3) LOGGING TABLESPACE CABIO_FUT, PARTITION MID2 VALUES LESS THAN (4) LOGGING TABLESPACE CABIO_FUT, PARTITION MID9 VALUES LESS THAN (5) LOGGING TABLESPACE CABIO_FUT, PARTITION MID3 VALUES LESS THAN (6) LOGGING TABLESPACE CABIO_FUT, PARTITION MID10 VALUES LESS THAN (7) LOGGING TABLESPACE CABIO_FUT, PARTITION MID4 VALUES LESS THAN (8) LOGGING TABLESPACE CABIO_FUT, PARTITION MID6 VALUES LESS THAN (9) LOGGING TABLESPACE CABIO_FUT, PARTITION MID5 VALUES LESS THAN (MAXVALUE) LOGGING TABLESPACE CABIO_FUT ) NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


