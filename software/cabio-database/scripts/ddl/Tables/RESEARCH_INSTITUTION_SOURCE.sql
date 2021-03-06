/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE RESEARCH_INSTITUTION_SOURCE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE RESEARCH_INSTITUTION_SOURCE CASCADE CONSTRAINTS PURGE
/

--
-- RESEARCH_INSTITUTION_SOURCE  (Table) 
--
CREATE TABLE RESEARCH_INSTITUTION_SOURCE ( ID NUMBER NOT NULL, NAME VARCHAR2(255 BYTE) NOT NULL, INSTITUTION_NAME VARCHAR2(255 BYTE) NOT NULL, INSTITUTION_DEPT VARCHAR2(255 BYTE) NOT NULL, INSTITUTION_PERSONS VARCHAR2(255 BYTE) NOT NULL, INSTITUTION_ADDRESS VARCHAR2(255 BYTE) NOT NULL, CONSTRAINT PK_RESEARCH_INSTITUTION_SOURCE PRIMARY KEY (ID), UNIQUE (NAME, INSTITUTION_NAME, INSTITUTION_DEPT, INSTITUTION_PERSONS, INSTITUTION_ADDRESS) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


