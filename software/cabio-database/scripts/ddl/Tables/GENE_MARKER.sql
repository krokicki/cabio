/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE GENE_MARKER
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GENE_MARKER CASCADE CONSTRAINTS PURGE
/

--
-- GENE_MARKER  (Table) 
--
--  Dependencies: 
--   GENE_TV (Table)
--
CREATE TABLE GENE_MARKER ( GENE_ID NUMBER NULL, MARKER_ID NUMBER NULL, CONSTRAINT GENE_MARKER_PK PRIMARY KEY (GENE_ID, MARKER_ID), CONSTRAINT GMFK1 FOREIGN KEY (GENE_ID) REFERENCES GENE_TV (GENE_ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


