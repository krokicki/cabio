DROP TABLE ZSTG_HUMAN_MRNA CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_HUMAN_MRNA  (Table) 
--
CREATE TABLE ZSTG_HUMAN_MRNA ( QNAME VARCHAR2(255 BYTE) NOT NULL, TNAME VARCHAR2(255 BYTE) NOT NULL, TSTART NUMBER NOT NULL, TEND NUMBER NOT NULL, CHROMOSOME_NO VARCHAR2(20 BYTE) NOT NULL, CHROMOSOME_ID NVARCHAR2(20) NOT NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


