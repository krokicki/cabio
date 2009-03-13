CREATE OR REPLACE FORCE VIEW CABIODEV.PATHWAY_GENE_OBJECT
(GENE_ID, PATHWAY_ID)
AS 
SELECT bg.gene_id, gp.pathway_id FROM
GENE_PATHWAY gp, BIOGENES bg
WHERE gp.bc_id = bg.bc_id;

