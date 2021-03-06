/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE MICROARRAY
 DROP PRIMARY KEY CASCADE
/
DROP TABLE MICROARRAY CASCADE CONSTRAINTS PURGE
/

--
-- MICROARRAY  (Table) 
--
CREATE TABLE MICROARRAY ( ID NUMBER NOT NULL, ARRAY_NAME VARCHAR2(100 BYTE) NULL, ANNOTATION_DATE DATE NULL, GENOME_VERSION VARCHAR2(100 BYTE) NULL, DBSNP_VERSION VARCHAR2(100 BYTE) NULL, PLATFORM VARCHAR2(100 BYTE) NOT NULL, TYPE VARCHAR2(100 BYTE) NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, DESCRIPTION VARCHAR2(100 BYTE) NOT NULL, ACCESSION VARCHAR2(100 BYTE) NULL, LSID VARCHAR2(100 BYTE) NULL, CHECK ("ARRAY_NAME" IS NOT NULL) DISABLE, CONSTRAINT MICROARRAY_PK PRIMARY KEY (ID), CONSTRAINT MABIGIDUNIQ UNIQUE (BIG_ID), UNIQUE (ARRAY_NAME, ANNOTATION_DATE, GENOME_VERSION, DBSNP_VERSION, PLATFORM, TYPE, DESCRIPTION, ACCESSION, LSID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


