CREATE OR REPLACE FORCE VIEW CABIODEV.TISSUE_OBJECT_LIMIT
(IDX, ID)
AS 
select rownum, TISSUE_ID from TISSUE_OBJECT;


