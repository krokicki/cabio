/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_TARGET_AGENT CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_TARGET_AGENT  (Table) 
--
CREATE TABLE ZSTG_TARGET_AGENT ( TARGET_ID NUMBER NOT NULL, AGENT_ID NUMBER NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


