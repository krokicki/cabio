DROP TABLE AR_ENTREZ_GENE CASCADE CONSTRAINTS PURGE
/

--
-- AR_ENTREZ_GENE  (Table) 
--
CREATE TABLE AR_ENTREZ_GENE ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, ENTREZ_GENE VARCHAR2(20 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT ) MONITORING
/


