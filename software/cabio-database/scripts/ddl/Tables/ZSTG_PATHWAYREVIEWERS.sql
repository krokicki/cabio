/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PATHWAYREVIEWERS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PATHWAYREVIEWERS  (Table) 
--
CREATE TABLE ZSTG_PATHWAYREVIEWERS ( PATHWAY_ID VARCHAR2(2500 BYTE) NOT NULL, SOURCE_ID VARCHAR2(2500 BYTE) NOT NULL, REVIEWER_NAME VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


