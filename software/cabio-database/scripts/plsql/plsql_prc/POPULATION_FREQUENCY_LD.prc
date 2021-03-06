CREATE OR REPLACE procedure POPULATION_FREQUENCY_LD as

  CURSOR DATABASECROSSCUR IS
  (select
	rownum,
	zpf.PROBE_SET_ID,
	zpf.ETHNICITY,
	zpf.ALLELE_A_FREQUENCY,
	zpf.ALLELE_B_FREQUENCY,
	zpf.HETEROZYGOUS_FREQUENCY,
	snp.ALLELE_A,
	snp.ALLELE_B,
	zsa.DBSNP_RS_ID,
	snp.ID SNP_ID,
	zsa.STRAND_VS_DBSNP
	from ZSTG_POP_FREQUENCY zpf, ZSTG_SNP_AFFY zsa, SNP_TV snp
	where zpf.PROBE_SET_ID = zsa.PROBE_SET_ID
	and zsa.DBSNP_RS_ID = snp.DB_SNP_ID
  );
  aID number:=0;
BEGIN
	EXECUTE IMMEDIATE('TRUNCATE TABLE POPULATION_FREQUENCY REUSE STORAGE');

	FOR aRec in DATABASECROSSCUR LOOP
      	aID := aID + 1;

		If (aRec.STRAND_VS_DBSNP = 'same') Then

		    If (aRec.ALLELE_A_FREQUENCY >= aRec.ALLELE_B_FREQUENCY) Then
			INSERT INTO POPULATION_FREQUENCY
				 (ID,
				  TYPE,
				  ETHNICITY,
				  MAJOR_FREQUENCY,
				  MINOR_FREQUENCY,
				  HETEROZYGOUS_FREQUENCY,
				  SNP_ID,
				  MAJOR_ALLELE,
				  MINOR_ALLELE,
				  SNP_PROBESET_AFFY_ID)
			VALUES
			     (aRec.ROWNUM,
			 	  'allele',
			      aRec.ETHNICITY,
				  aRec.ALLELE_A_FREQUENCY,
				  aRec.ALLELE_B_FREQUENCY,
				  aRec.HETEROZYGOUS_FREQUENCY,
				  aRec.SNP_ID,
				  aRec.ALLELE_A,
				  aRec.ALLELE_B,
				  aRec.PROBE_SET_ID);
		    ELSE
			INSERT INTO POPULATION_FREQUENCY
				 (ID,
				  TYPE,
				  ETHNICITY,
				  MAJOR_FREQUENCY,
				  MINOR_FREQUENCY,
				  HETEROZYGOUS_FREQUENCY,
				  SNP_ID,
				  MAJOR_ALLELE,
				  MINOR_ALLELE,
				  SNP_PROBESET_AFFY_ID)
			VALUES
			     (aRec.ROWNUM,
				  'allele',
			      aRec.ETHNICITY,
				  aRec.ALLELE_B_FREQUENCY,
				  aRec.ALLELE_A_FREQUENCY,
				  aRec.HETEROZYGOUS_FREQUENCY,
				  aRec.SNP_ID,
				  aRec.ALLELE_B,
				  aRec.ALLELE_A,
			 	  aRec.PROBE_SET_ID);
		    END IF;

		ELSE

			If (aRec.ALLELE_A_FREQUENCY >= aRec.ALLELE_B_FREQUENCY) Then
			INSERT INTO POPULATION_FREQUENCY
				 (ID,
				  TYPE,
				  ETHNICITY,
				  MAJOR_FREQUENCY,
				  MINOR_FREQUENCY,
				  HETEROZYGOUS_FREQUENCY,
				  SNP_ID,
				  MAJOR_ALLELE,
				  MINOR_ALLELE,
				  SNP_PROBESET_AFFY_ID)
			VALUES
			     (aRec.ROWNUM,
			 	  'allele',
			      aRec.ETHNICITY,
				  aRec.ALLELE_A_FREQUENCY,
				  aRec.ALLELE_B_FREQUENCY,
				  aRec.HETEROZYGOUS_FREQUENCY,
				  aRec.SNP_ID,
				  aRec.ALLELE_B,
				  aRec.ALLELE_A,
				  aRec.PROBE_SET_ID);
		    ELSE
			INSERT INTO POPULATION_FREQUENCY
				 (ID,
				  TYPE,
				  ETHNICITY,
				  MAJOR_FREQUENCY,
				  MINOR_FREQUENCY,
				  HETEROZYGOUS_FREQUENCY,
				  SNP_ID,
				  MAJOR_ALLELE,
				  MINOR_ALLELE,
				  SNP_PROBESET_AFFY_ID)
			VALUES
			     (aRec.ROWNUM,
				  'allele',
			      aRec.ETHNICITY,
				  aRec.ALLELE_B_FREQUENCY,
				  aRec.ALLELE_A_FREQUENCY,
				  aRec.HETEROZYGOUS_FREQUENCY,
				  aRec.SNP_ID,
				  aRec.ALLELE_A,
				  aRec.ALLELE_B,
				  aRec.PROBE_SET_ID);
		    END IF;

            IF MOD(aID, 500) = 0 THEN
				COMMIT;
	        END IF;

	   END IF;
   END LOOP;

COMMIT;

END;
/

