/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE DISEASE CASCADE CONSTRAINTS PURGE
/

--
-- DISEASE  (Table) 
--
CREATE TABLE DISEASE ( DISEASE_ID NUMBER NOT NULL, NAME VARCHAR2(255 BYTE) NULL, CABIOID NUMBER NULL, CONCEPTID NUMBER NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


