CREATE OR REPLACE FORCE VIEW CABIODEV.REGELEMENT_PROMOTER_VIEW_LIMIT
(IDX, ID)
AS 
select rownum, PROMOTER_ID from REGELEMENT_PROMOTER_VIEW;


