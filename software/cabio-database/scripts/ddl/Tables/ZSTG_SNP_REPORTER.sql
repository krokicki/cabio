/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ZSTG_SNP_REPORTER
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_SNP_REPORTER CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_SNP_REPORTER  (Table) 
--
CREATE TABLE ZSTG_SNP_REPORTER ( ID NUMBER NOT NULL, NAME VARCHAR2(50 BYTE) NOT NULL, MICROARRAY_ID NUMBER NOT NULL, SNP_ID NUMBER NULL, PHAST_CONSERVATION VARCHAR2(30 BYTE) NULL, CHROMOSOME_ID NUMBER NULL, CHR_START NUMBER NULL, CHR_STOP NUMBER NULL, CYTO_START VARCHAR2(255 BYTE) NULL, CYTO_STOP VARCHAR2(255 BYTE) NULL, CONSTRAINT PK_ZSTG_SNP_REPORTER PRIMARY KEY (ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


