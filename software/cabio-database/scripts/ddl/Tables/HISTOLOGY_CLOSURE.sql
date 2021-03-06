/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE HISTOLOGY_CLOSURE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE HISTOLOGY_CLOSURE CASCADE CONSTRAINTS PURGE
/

--
-- HISTOLOGY_CLOSURE  (Table) 
--
CREATE TABLE HISTOLOGY_CLOSURE ( HISTOLOGY_CODE NUMBER NOT NULL, ANCESTOR NUMBER NOT NULL, HIERARCHY_LEVEL NUMBER NULL, CONSTRAINT HCPK PRIMARY KEY (HISTOLOGY_CODE, ANCESTOR) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE 4 INSTANCES 1 ) MONITORING
/


