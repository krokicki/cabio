/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

CREATE OR REPLACE procedure DATABASE_CROSS_REF31_03_LD as

  V_MAXROW NUMBER :=0;

  CURSOR DATABASECROSSCUR IS
	(select rownum, g.GENE_ID, e.ENSEMBL_ID 
	from GENE_TV g, ZSTG_RNA_PROBESETS z, AR_ENSEMBL e 
	where z.UNIGENE_ID = 'Hs.'||g.CLUSTER_ID 
	and z.PROBE_SET_ID = e.PROBE_SET_ID);
	
  aID number:=0;

BEGIN

   SELECT MAX(ID) INTO V_MAXROW FROM DATABASE_CROSS_REFERENCE;

   FOR aRec in DATABASECROSSCUR LOOP
      aID := aID + 1;

      INSERT INTO DATABASE_CROSS_REFERENCE(ID, GENE_ID,
      	CROSS_REFERENCE_ID, TYPE, SOURCE_NAME, SOURCE_TYPE)
      	
      VALUES
     	(aRec.rownum + V_MAXROW, aRec.GENE_ID, aRec.ENSEMBL_ID,
      	'gov.nih.nci.domain.Gene','ENSEMBL_ID','Ensemble');

      IF MOD(aID, 500) = 0 THEN
         COMMIT;
      END IF;

   END LOOP;

COMMIT;

END; 
/

