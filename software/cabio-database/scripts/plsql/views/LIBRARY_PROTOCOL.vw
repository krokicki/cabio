CREATE OR REPLACE FORCE VIEW CABIODEV.LIBRARY_PROTOCOL
(LIBRARY_ID, PROTOCOL_ID)
AS 
SELECT LIBRARY_ID, LIBRARY_PROTOCOL FROM LIBRARY
UNION
SELECT LIBRARY_ID, TISSUE_PROTOCOL FROM LIBRARY;


