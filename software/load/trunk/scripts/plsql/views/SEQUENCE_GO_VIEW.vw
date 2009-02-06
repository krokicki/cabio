CREATE OR REPLACE FORCE VIEW CABIODEV.SEQUENCE_GO_VIEW
(SEQUENCE_ID, GO_ID)
AS 
SELECT /*+ ORDERED */ GS.SEQUENCE_ID, GG.GO_ID 
FROM GO_GENES GG, GENE_SEQUENCE GS 
WHERE GS.GENE_ID = GG.GENE_ID;


