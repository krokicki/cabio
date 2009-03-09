ALTER TABLE AR_ALIGNMENTS_TMP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_ALIGNMENTS_TMP CASCADE CONSTRAINTS PURGE
/

--
-- AR_ALIGNMENTS_TMP  (Table) 
--
CREATE TABLE AR_ALIGNMENTS_TMP ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, CHROMOSOME VARCHAR2(20 BYTE) NOT NULL, START_POSITION NUMBER NOT NULL, END_POSITION NUMBER NOT NULL, DIRECTION CHAR(1 BYTE) NOT NULL, TRIM_CHR VARCHAR2(50 BYTE) NOT NULL, ASSEMBLY VARCHAR2(50 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, CHROMOSOME_ID NUMBER NULL, PRIMARY KEY (PROBE_SET_ID, CHROMOSOME, START_POSITION, END_POSITION, DIRECTION, TRIM_CHR, ASSEMBLY, GENECHIP_ARRAY) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


