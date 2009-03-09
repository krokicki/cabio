ALTER TABLE AR_GO_CELLULAR_COMPONENT_TMP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_GO_CELLULAR_COMPONENT_TMP CASCADE CONSTRAINTS PURGE
/

--
-- AR_GO_CELLULAR_COMPONENT_TMP  (Table) 
--
CREATE TABLE AR_GO_CELLULAR_COMPONENT_TMP ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, ACCESSION_NUMBER NUMBER NOT NULL, DESCRIPTION VARCHAR2(200 BYTE) NOT NULL, EVIDENCE VARCHAR2(100 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (PROBE_SET_ID, ACCESSION_NUMBER, DESCRIPTION, EVIDENCE, GENECHIP_ARRAY) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


