DROP TABLE ZSTG_AGENT_CGID CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_AGENT_CGID  (Table) 
--
CREATE TABLE ZSTG_AGENT_CGID ( ID NUMBER NOT NULL, DRUG VARCHAR2(1000 BYTE) NOT NULL, EVS_ID VARCHAR2(50 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

