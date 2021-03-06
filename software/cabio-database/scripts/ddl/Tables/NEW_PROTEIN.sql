/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE NEW_PROTEIN
 DROP PRIMARY KEY CASCADE
/
DROP TABLE NEW_PROTEIN CASCADE CONSTRAINTS PURGE
/

--
-- NEW_PROTEIN  (Table) 
--
CREATE TABLE NEW_PROTEIN ( PROTEIN_ID NUMBER NOT NULL, PRIMARY_ACCESSION VARCHAR2(50 BYTE) NOT NULL, SECONDARY_ACCESSION VARCHAR2(50 BYTE) NULL, UNIPROTCODE VARCHAR2(50 BYTE) NOT NULL, KEYWORD VARCHAR2(50 BYTE) NULL, COPYRIGHTSTATEMENT VARCHAR2(4000 BYTE) NOT NULL, NAME VARCHAR2(500 BYTE) NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT NP_PK PRIMARY KEY (PROTEIN_ID), CONSTRAINT NPBIGIDUNIQ UNIQUE (BIG_ID), CONSTRAINT PROTUNIQ UNIQUE (PRIMARY_ACCESSION), UNIQUE (PRIMARY_ACCESSION, SECONDARY_ACCESSION, UNIPROTCODE, KEYWORD, COPYRIGHTSTATEMENT, NAME, PROTEIN_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


