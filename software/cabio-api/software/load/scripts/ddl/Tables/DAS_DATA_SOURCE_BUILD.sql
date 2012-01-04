DROP TABLE DAS_DATA_SOURCE_BUILD CASCADE CONSTRAINTS PURGE
/

--
-- DAS_DATA_SOURCE_BUILD  (Table) 
--
CREATE TABLE DAS_DATA_SOURCE_BUILD ( BUILD_ID NUMBER NOT NULL, DAS_URL VARCHAR2(255 BYTE) NOT NULL, DESCRIPTION VARCHAR2(255 BYTE) NOT NULL, VERSION VARCHAR2(5 BYTE) NOT NULL, D_FAULT NUMBER NOT NULL, TYPE VARCHAR2(10 BYTE) NOT NULL, PROTOCOL VARCHAR2(10 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


