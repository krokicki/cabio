DROP TABLE ZSTG_INTERACTIONCOMPONENTLABEL CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_INTERACTIONCOMPONENTLABEL  (Table) 
--
CREATE TABLE ZSTG_INTERACTIONCOMPONENTLABEL ( INTERACTION_ID VARCHAR2(2500 BYTE) NOT NULL, SOURCE_ID VARCHAR2(2500 BYTE) NOT NULL, MOLECULE_ID VARCHAR2(2500 BYTE) NOT NULL, ROLE_TYPE VARCHAR2(2500 BYTE) NOT NULL, LABEL_TYPE VARCHAR2(2500 BYTE) NOT NULL, VALUE VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


