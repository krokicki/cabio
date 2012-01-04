ALTER TABLE ORGANONTOLOGYRELATIONSHIP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ORGANONTOLOGYRELATIONSHIP CASCADE CONSTRAINTS PURGE
/

--
-- ORGANONTOLOGYRELATIONSHIP  (Table) 
--
CREATE TABLE ORGANONTOLOGYRELATIONSHIP ( ORGAN_ONTOLOGY_RELATIONSHIP_ID NUMBER NOT NULL, CHILD_ID NUMBER NOT NULL, PARENT_ID NUMBER NULL, RELATIONSHIP VARCHAR2(50 BYTE) NOT NULL, CHILD_ID_2 NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT PK_ORGANONTOLOGYRELATIONSHIP PRIMARY KEY (ORGAN_ONTOLOGY_RELATIONSHIP_ID), CONSTRAINT OORBIGID UNIQUE (BIG_ID), UNIQUE (CHILD_ID, PARENT_ID, RELATIONSHIP, CHILD_ID_2) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


