/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE MARKER
 DROP PRIMARY KEY CASCADE
/
DROP TABLE MARKER CASCADE CONSTRAINTS PURGE
/

--
-- MARKER  (Table) 
--
--  Dependencies: 
--   TAXON (Table)
--
CREATE TABLE MARKER ( ID NUMBER NOT NULL, NAME VARCHAR2(200 BYTE) NULL, MARKER_ID VARCHAR2(500 BYTE) NOT NULL, TYPE VARCHAR2(100 BYTE) NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, TAXON_ID NUMBER NOT NULL, ACCNO VARCHAR2(2500 BYTE) NULL, CONSTRAINT MARKER_PK PRIMARY KEY (ID), CONSTRAINT MARKERBIGID UNIQUE (BIG_ID), UNIQUE (NAME, MARKER_ID, TYPE, TAXON_ID, ACCNO), CONSTRAINT MTFK FOREIGN KEY (TAXON_ID) REFERENCES TAXON (TAXON_ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


