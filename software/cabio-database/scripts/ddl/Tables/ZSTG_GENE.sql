/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_GENE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE  (Table) 
--
CREATE TABLE ZSTG_GENE ( GENE_ID NUMBER NOT NULL, GENE_SYMBOL VARCHAR2(50 BYTE) NULL, GENE_TITLE VARCHAR2(2000 BYTE) NULL, CHROMOSOME_ID NUMBER NOT NULL, TAXON_ID NUMBER NOT NULL, CYTOBAND VARCHAR2(100 BYTE) NULL, DATA_SOURCE NUMBER NULL, IDENTIFIER VARCHAR2(50 BYTE) NULL, START_CYTOBAND VARCHAR2(50 BYTE) NULL, END_CYTOBAND VARCHAR2(50 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


