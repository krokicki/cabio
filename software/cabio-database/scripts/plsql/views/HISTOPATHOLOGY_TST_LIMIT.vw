CREATE OR REPLACE FORCE VIEW CABIODEV.HISTOPATHOLOGY_TST_LIMIT
(IDX, ID)
AS 
select rownum, HISTOPATHOLOGY_ID from HISTOPATHOLOGY_TST;


