ALTER TABLE GO_RELATIONSHIP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GO_RELATIONSHIP CASCADE CONSTRAINTS PURGE
/

--
-- GO_RELATIONSHIP  (Table) 
--
CREATE TABLE GO_RELATIONSHIP ( CHILD_ID NUMBER NOT NULL, PARENT_ID NUMBER NOT NULL, RELATIONSHIP VARCHAR2(7 BYTE) NOT NULL, ID NUMBER NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT PK_GO_RELATIONSHIP PRIMARY KEY (ID) DISABLE, CONSTRAINT GORBIGID UNIQUE (BIG_ID), UNIQUE (CHILD_ID, PARENT_ID, RELATIONSHIP) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

