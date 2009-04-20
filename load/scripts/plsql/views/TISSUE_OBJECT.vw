CREATE OR REPLACE FORCE VIEW CABIODEV.TISSUE_OBJECT
(TISSUE_ID, TISSUE_NAME, ORGAN, SEX, SUPPLIER, 
 HISTOLOGY, DESCRIPTION, TISSUE_TYPE, CELL_TYPE, CELL_LINE, 
 DEVELOPMENT_STAGE, SAMPLE_TAXON_ID, TISSUE_PROTOCOL_ID, BIG_ID)
AS 
SELECT TISSUE_ID, TISSUE_NAME, ORGAN, SEX,
SUPPLIER, HISTOLOGY, DESCRIPTION, TISSUE_TYPE, CELL_TYPE,
CELL_LINE, DEVELOPMENT_STAGE,
S.TAXON_ID AS SAMPLE_TAXON_ID,
T.TISSUE_PROTOCOL AS TISSUE_PROTOCOL_ID, T.BIG_ID
FROM TISSUE_SAMPLE T, SAMPLE S
WHERE T.SAMPLE_ID = S.SAMPLE_ID;

