DROP TABLE ZSTG_AGENT_BK CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_AGENT_BK  (Table) 
--
CREATE TABLE ZSTG_AGENT_BK ( AGENT_ID NUMBER NOT NULL, AGENT_TYPE VARCHAR2(100 BYTE) NULL, AGENT_NAME VARCHAR2(2500 BYTE) NULL, AGENT_SOURCE VARCHAR2(400 BYTE) NULL, AGENT_COMMENT VARCHAR2(400 BYTE) NULL, CMAP_AGENT NUMBER NULL, NSC_NUMBER NUMBER NULL, EVS_ID VARCHAR2(50 BYTE) NULL, BIG_ID VARCHAR2(200 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


