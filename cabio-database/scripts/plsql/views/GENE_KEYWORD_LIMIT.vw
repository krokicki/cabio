CREATE OR REPLACE FORCE VIEW CABIODEV.GENE_KEYWORD_LIMIT
(IDX, ID)
AS 
select rownum, null from GENE_KEYWORD;

