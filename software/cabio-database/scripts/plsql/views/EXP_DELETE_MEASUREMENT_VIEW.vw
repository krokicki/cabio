CREATE OR REPLACE FORCE VIEW CABIODEV.EXP_DELETE_MEASUREMENT_VIEW
(ARRAY_DESIGN_ID, REPORTER_ID)
AS 
SELECT ARRAY_DESIGN_ID, REPORTER_ID
FROM dcop.REPORTER@todcop R, dcop.DESIGN_ELEMENT_GROUP@todcop D
WHERE D.DESIGN_ELEMENT_GROUP_ID = R.DESIGN_ELEMENT_GROUP_ID;


