/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PID_INTERACTIONEVIDENCE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_INTERACTIONEVIDENCE  (Table) 
--
CREATE TABLE ZSTG_PID_INTERACTIONEVIDENCE ( INTERACTION_ID NUMBER NOT NULL, EVIDENCE_CODE VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


