CREATE OR REPLACE FORCE VIEW CABIODEV.REPORTER_LIMIT
(IDX, ID)
AS 
select rownum, REPORTER_ID from REPORTER;

