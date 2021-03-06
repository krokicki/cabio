/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE GENE_FUNCTION_ASSOCIATION
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GENE_FUNCTION_ASSOCIATION CASCADE CONSTRAINTS PURGE
/

--
-- GENE_FUNCTION_ASSOCIATION  (Table) 
--
--  Dependencies: 
--   EVIDENCE (Table)
--   GENE_TV (Table)
--   HISTOLOGY_CODE (Table)
--   AGENT (Table)
--
CREATE TABLE GENE_FUNCTION_ASSOCIATION ( GENE_ID NUMBER NOT NULL, ROLE_ID VARCHAR2(500 BYTE) NOT NULL, AGENT_ID NUMBER NULL, HISTOLOGYCODE_ID NUMBER NULL, EVIDENCE_ID NUMBER NOT NULL, ID NUMBER NOT NULL, BIG_ID VARCHAR2(1000 BYTE) NULL, DISCRIMINATOR VARCHAR2(1000 BYTE) NOT NULL, CONSTRAINT GFA_PK PRIMARY KEY (ID), UNIQUE (GENE_ID, ROLE_ID, HISTOLOGYCODE_ID, AGENT_ID, EVIDENCE_ID), CONSTRAINT GFAEVFK FOREIGN KEY (EVIDENCE_ID) REFERENCES EVIDENCE (ID), CONSTRAINT GFAFK1 FOREIGN KEY (GENE_ID) REFERENCES GENE_TV (GENE_ID), CONSTRAINT GFAFK2 FOREIGN KEY (HISTOLOGYCODE_ID) REFERENCES HISTOLOGY_CODE (HISTOLOGY_CODE), CONSTRAINT GFAFK4 FOREIGN KEY (AGENT_ID) REFERENCES AGENT (AGENT_ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


