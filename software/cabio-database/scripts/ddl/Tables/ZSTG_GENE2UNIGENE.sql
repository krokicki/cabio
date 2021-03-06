/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ZSTG_GENE2UNIGENE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_GENE2UNIGENE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE2UNIGENE  (Table) 
--
CREATE TABLE ZSTG_GENE2UNIGENE ( GENEID NUMBER NOT NULL, UNIGENE_CLUSTER VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (GENEID, UNIGENE_CLUSTER) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


