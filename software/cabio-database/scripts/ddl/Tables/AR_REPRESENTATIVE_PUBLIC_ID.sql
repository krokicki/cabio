ALTER TABLE AR_REPRESENTATIVE_PUBLIC_ID
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_REPRESENTATIVE_PUBLIC_ID CASCADE CONSTRAINTS PURGE
/

--
-- AR_REPRESENTATIVE_PUBLIC_ID  (Table) 
--
CREATE TABLE AR_REPRESENTATIVE_PUBLIC_ID ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, REPRESENTATIVE_PUBLIC_ID VARCHAR2(100 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (PROBE_SET_ID, REPRESENTATIVE_PUBLIC_ID, GENECHIP_ARRAY) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

