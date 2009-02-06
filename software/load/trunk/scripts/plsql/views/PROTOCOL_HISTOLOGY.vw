CREATE OR REPLACE FORCE VIEW CABIODEV.PROTOCOL_HISTOLOGY
(PRO_ID, HISTOLOGY_CODE, HISTOLOGY_NAME)
AS 
SELECT PRO_ID, IMT_TO_HISTOLOGY.HISTOLOGY_CODE, HISTOLOGY_NAME FROM
PROTOCOL_DISEASES, IMT_TO_HISTOLOGY , HISTOLOGY_CODE
WHERE PROTOCOL_DISEASES.IMT_CODE = IMT_TO_HISTOLOGY.IMT_CODE
  AND IMT_TO_HISTOLOGY.HISTOLOGY_CODE = HISTOLOGY_CODE.HISTOLOGY_CODE;


