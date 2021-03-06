CREATE OR REPLACE FORCE VIEW CABIODEV.LIBRARY_OBJECT
(LIBRARY_ID, LIBRARY_NAME, DESCRIPTION, UNIGENE_ID, KEYWORD, 
 CLONES_TO_DATE, SEQUENCES_TO_DATE, R_SITE_1, R_SITE_2, LAB_HOST, 
 LIBRARY_TYPE, CREATE_DATE, CLONE_VECTOR, CLONE_VECTOR_TYPE, PRODUCER, 
 TISSUE_SAMPLE_ID, LIBRARY_PROTOCOL_ID, TISSUE_PROTOCOL_ID, SCIENTIFIC_NAME, HISTOLOGY, 
 TISSUE_NAME, BIG_ID)
AS 
SELECT L.LIBRARY_ID, L.LIBRARY_NAME, L.DESCRIPTION,
L.UNIGENE_ID, L.KEYWORD, L.CLONES_TO_DATE, L.SEQUENCES_TO_DATE, L.R_SITE_1,
L.R_SITE_2, L.LAB_HOST, L.LIBRARY_TYPE, L.CREATE_DATE,
L.VECTOR AS CLONE_VECTOR, L.VECTOR_TYPE AS CLONE_VECTOR_TYPE, L.PRODUCER,
L.TISSUE_ID AS TISSUE_SAMPLE_ID, L.LIBRARY_PROTOCOL AS LIBRARY_PROTOCOL_ID,  T.TISSUE_PROTOCOL AS TISSUE_PROTOCOL_ID,
SCIENTIFIC_NAME, HISTOLOGY  , TISSUE_NAME, L.BIG_ID
FROM LIBRARY L, TISSUE_SAMPLE T, TAXON O
WHERE L.TISSUE_ID = T.TISSUE_ID
  AND L.TAXON_ID = O.TAXON_ID;


