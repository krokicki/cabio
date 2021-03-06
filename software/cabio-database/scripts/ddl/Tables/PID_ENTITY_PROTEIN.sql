/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE PID_ENTITY_PROTEIN
 DROP PRIMARY KEY CASCADE
/
DROP TABLE PID_ENTITY_PROTEIN CASCADE CONSTRAINTS PURGE
/

--
-- PID_ENTITY_PROTEIN  (Table) 
--
--  Dependencies: 
--   PID_PHYSICAL_ENTITY (Table)
--   NEW_PROTEIN (Table)
--
CREATE TABLE PID_ENTITY_PROTEIN ( PHYSICAL_ENTITY_ID NUMBER NOT NULL, PROTEIN_ID NUMBER NOT NULL, GENE_ID NUMBER NULL, PRIMARY KEY (PHYSICAL_ENTITY_ID, PROTEIN_ID), UNIQUE (PROTEIN_ID, PHYSICAL_ENTITY_ID, GENE_ID), FOREIGN KEY (PHYSICAL_ENTITY_ID) REFERENCES PID_PHYSICAL_ENTITY (ID), FOREIGN KEY (PROTEIN_ID) REFERENCES NEW_PROTEIN (PROTEIN_ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


