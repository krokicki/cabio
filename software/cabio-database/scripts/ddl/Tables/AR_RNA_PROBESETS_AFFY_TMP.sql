/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE AR_RNA_PROBESETS_AFFY_TMP CASCADE CONSTRAINTS PURGE
/

--
-- AR_RNA_PROBESETS_AFFY_TMP  (Table) 
--
CREATE TABLE AR_RNA_PROBESETS_AFFY_TMP ( ID NUMBER NOT NULL, PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, GENECHIP_ARRAY_NAME VARCHAR2(50 BYTE) NULL, SPECIES_SCIENTIFIC_NAME VARCHAR2(200 BYTE) NULL, ANNOTATION_DATA VARCHAR2(20 BYTE) NULL, CHECK ("GENECHIP_ARRAY_NAME" IS NOT NULL) DISABLE, CHECK ("SPECIES_SCIENTIFIC_NAME" IS NOT NULL) DISABLE, CHECK ("ANNOTATION_DATA" IS NOT NULL) DISABLE ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


