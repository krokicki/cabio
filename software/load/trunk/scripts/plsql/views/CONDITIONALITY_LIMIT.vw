CREATE OR REPLACE FORCE VIEW CABIODEV.CONDITIONALITY_LIMIT
(IDX, ID)
AS 
select rownum, CONDITIONALITY_ID from CONDITIONALITY;


