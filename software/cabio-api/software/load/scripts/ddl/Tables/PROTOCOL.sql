ALTER TABLE PROTOCOL
 DROP PRIMARY KEY CASCADE
/
DROP TABLE PROTOCOL CASCADE CONSTRAINTS PURGE
/

--
-- PROTOCOL  (Table) 
--
CREATE TABLE PROTOCOL ( PROTOCOL_NAME VARCHAR2(50 BYTE) NOT NULL, PROTOCOL_TYPE VARCHAR2(10 BYTE) NULL, DESCRIPTION VARCHAR2(2000 BYTE) NULL, PROTOCOL_ID NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT PROTPK PRIMARY KEY (PROTOCOL_ID), CONSTRAINT PROBIGIDUN UNIQUE (BIG_ID), CONSTRAINT PROTOCOLNODUPS UNIQUE (PROTOCOL_TYPE, PROTOCOL_NAME), UNIQUE (PROTOCOL_NAME, PROTOCOL_TYPE, DESCRIPTION, PROTOCOL_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


