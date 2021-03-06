/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE TISSUE_CODE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE TISSUE_CODE CASCADE CONSTRAINTS PURGE
/

--
-- TISSUE_CODE  (Table) 
--
CREATE TABLE TISSUE_CODE ( TISSUE_CODE NUMBER NOT NULL, TISSUE_NAME VARCHAR2(100 BYTE) NOT NULL, PARENT NUMBER NULL, RELATIONSHIP VARCHAR2(25 BYTE) DEFAULT 'part-OF' NOT NULL, BIG_ID VARCHAR2(200 BYTE) NOT NULL, CONSTRAINT PK_TISSUE_CODE PRIMARY KEY (TISSUE_CODE), CONSTRAINT ORGANONTONODUPS UNIQUE (TISSUE_NAME, PARENT), CONSTRAINT TCBIGID UNIQUE (BIG_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


