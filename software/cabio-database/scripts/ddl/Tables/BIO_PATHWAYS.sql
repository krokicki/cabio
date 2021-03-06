/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE BIO_PATHWAYS
 DROP PRIMARY KEY CASCADE
/
DROP TABLE BIO_PATHWAYS CASCADE CONSTRAINTS PURGE
/

--
-- BIO_PATHWAYS  (Table) 
--
--  Dependencies: 
--   TAXON (Table)
--
CREATE TABLE BIO_PATHWAYS ( PATHWAY_ID NUMBER NOT NULL, PATHWAY_NAME VARCHAR2(30 BYTE) NOT NULL, PATHWAY_DISPLAY VARCHAR2(200 BYTE) NOT NULL, TAXON NUMBER NOT NULL, PATHWAY_DIAGRAM VARCHAR2(50 BYTE) NULL, PATHWAY_DESC CLOB NULL, CONSTRAINT PATHPK PRIMARY KEY (PATHWAY_ID), CONSTRAINT PATHFK FOREIGN KEY (TAXON) REFERENCES TAXON (TAXON_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS LOB (PATHWAY_DESC) STORE AS ( TABLESPACE CABIO_FUT ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10 NOCACHE NOLOGGING ) NOCACHE PARALLEL ( DEGREE 4 INSTANCES 1 ) MONITORING
/


