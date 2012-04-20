ALTER TABLE GO_GENES
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GO_GENES CASCADE CONSTRAINTS PURGE
/

--
-- GO_GENES  (Table) 
--
CREATE TABLE GO_GENES ( GENE_ID NUMBER NULL, TAXON_ID NUMBER NULL, GO_ID NUMBER NOT NULL, CONSTRAINT GOGPK PRIMARY KEY (GO_ID, GENE_ID, TAXON_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE 4 INSTANCES 1 ) MONITORING
/

