DROP TABLE ZSTG_PID_INTERACTIONCONDITION CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_INTERACTIONCONDITION  (Table) 
--
CREATE TABLE ZSTG_PID_INTERACTIONCONDITION ( INTERACTION_ID NUMBER NOT NULL, CONDITIONNAME VARCHAR2(2500 BYTE) NOT NULL, XREF VARCHAR2(2500 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


