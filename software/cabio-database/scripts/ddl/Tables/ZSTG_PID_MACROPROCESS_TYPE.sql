/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PID_MACROPROCESS_TYPE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_MACROPROCESS_TYPE  (Table) 
--
CREATE TABLE ZSTG_PID_MACROPROCESS_TYPE ( INTERACTION_ID NUMBER NOT NULL, MACROPROCESS_NAME VARCHAR2(2500 BYTE) NOT NULL, XREF VARCHAR2(2500 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


