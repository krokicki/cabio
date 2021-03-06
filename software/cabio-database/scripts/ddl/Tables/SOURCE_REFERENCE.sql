/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE SOURCE_REFERENCE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE SOURCE_REFERENCE CASCADE CONSTRAINTS PURGE
/

--
-- SOURCE_REFERENCE  (Table) 
--
CREATE TABLE SOURCE_REFERENCE ( SOURCE_REFERENCE_ID NUMBER NOT NULL, SOURCE_REFERENCE_TYPE VARCHAR2(50 BYTE) DEFAULT 'URL' NOT NULL, REFERENCE CLOB NOT NULL, CONSTRAINT SRPK PRIMARY KEY (SOURCE_REFERENCE_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS LOB (REFERENCE) STORE AS ( TABLESPACE CABIO_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE NOLOGGING ) NOCACHE NOPARALLEL MONITORING
/


