/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_CMAP_GENES CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_CMAP_GENES  (Table) 
--
CREATE TABLE ZSTG_CMAP_GENES ( GENE_ID NUMBER NOT NULL, GENE_NAME CHAR(30 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


