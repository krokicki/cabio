ALTER TABLE CONTEXT
 DROP PRIMARY KEY CASCADE
/
DROP TABLE CONTEXT CASCADE CONSTRAINTS PURGE
/

--
-- CONTEXT  (Table) 
--
CREATE TABLE CONTEXT ( CONTEXT_CODE NUMBER NOT NULL, TISSUE_CODE NUMBER NULL, HISTOLOGY_CODE NUMBER NULL, CONSTRAINT CONTEXT_PK PRIMARY KEY (HISTOLOGY_CODE, TISSUE_CODE) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE 4 INSTANCES 1 ) MONITORING
/


