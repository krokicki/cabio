/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE GENE_TV
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GENE_TV CASCADE CONSTRAINTS PURGE
/

--
-- GENE_TV  (Table) 
--
--  Dependencies: 
--   CHROMOSOME (Table)
--   TAXON (Table)
--
CREATE TABLE GENE_TV ( GENE_ID NUMBER NOT NULL, FULL_NAME VARCHAR2(2000 BYTE) NOT NULL, SYMBOL VARCHAR2(50 BYTE) NULL, CLUSTER_ID NUMBER NOT NULL, CHROMOSOME_ID NUMBER NOT NULL, TAXON_ID NUMBER NOT NULL, ENGINEEREDGENE_ID NUMBER NULL, BIG_ID VARCHAR2(200 BYTE) NULL, HUGO_SYMBOL VARCHAR2(20 BYTE) NULL, CONSTRAINT GTV_PK PRIMARY KEY (GENE_ID), CONSTRAINT GTVBIGID UNIQUE (BIG_ID), UNIQUE (GENE_ID, FULL_NAME, SYMBOL, CLUSTER_ID, CHROMOSOME_ID, TAXON_ID, ENGINEEREDGENE_ID, HUGO_SYMBOL), CONSTRAINT GENE_CHR FOREIGN KEY (CHROMOSOME_ID) REFERENCES CHROMOSOME (CHROMOSOME_ID), CONSTRAINT GENE_TAX FOREIGN KEY (TAXON_ID) REFERENCES TAXON (TAXON_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


