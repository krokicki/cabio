/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ZSTG_EXON_REPORTER
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_EXON_REPORTER CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_EXON_REPORTER  (Table) 
--
CREATE TABLE ZSTG_EXON_REPORTER ( ID NUMBER NOT NULL, NAME VARCHAR2(50 BYTE) NOT NULL, MICROARRAY_ID NUMBER NOT NULL, MANUFACTURER_PSR_ID VARCHAR2(20 BYTE) NOT NULL, PROBE_COUNT VARCHAR2(20 BYTE) NOT NULL, STRAND VARCHAR2(20 BYTE) NOT NULL, TRANSCRIPT_ID NUMBER NOT NULL, EXON_ID NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CHROMOSOME_ID NUMBER NULL, START_LOCATION NUMBER NULL, STOP_LOCATION NUMBER NULL, CONSTRAINT PK_ZSTG_EXON_REPORTER PRIMARY KEY (ID), UNIQUE (BIG_ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE 4 INSTANCES 1 ) MONITORING
/


