/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

VAR V_MAXROW NUMBER;
COLUMN V_MAXROW NEW_VALUE V_MAXROW;

TRUNCATE TABLE cytogenic_location_cytoband REUSE STORAGE;

@$LOAD/triggers.sql cytogenic_location_cytoband;
@$LOAD/triggers/cytogenic_location_cytoband.disable.sql;

@$LOAD/constraints.sql cytogenic_location_cytoband;
@$LOAD/constraints/cytogenic_location_cytoband.disable.sql;

@$LOAD/indexer_new.sql cytogenic_location_cytoband;
@$LOAD/indexes/cytogenic_location_cytoband.drop.sql;

SELECT MAX(ID) + 1 AS V_MAXROW
  FROM physical_location; 
DROP SEQUENCE CYTO_LOC_CYTOID;

CREATE SEQUENCE CYTO_LOC_CYTOID START WITH &V_MAXROW INCREMENT BY 1;

DROP SEQUENCE CYTO_LOC_CYTOID_REMOD;
CREATE SEQUENCE CYTO_LOC_CYTOID_REMOD START WITH &V_MAXROW INCREMENT BY 1;

EXIT; 
