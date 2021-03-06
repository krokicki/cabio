CREATE OR REPLACE FORCE VIEW CABIODEV.GENE_HOMOLOGE_HS_VIEW
(GENE_ID, SIMILARITY, MM_CLUSTER_NUMBER)
AS 
SELECT GENE_ID, SIMILARITY, MM_CLUSTER_NUMBER
FROM GENE_CLUSTER_VIEW GC, CGAP.HS_TO_MM@TOWEB H_TO_MM
WHERE GC.IDENTIFIER = H_TO_MM.HS_CLUSTER_NUMBER AND GC.TAXON_ID = 5;


