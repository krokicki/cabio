CREATE OR REPLACE PROCEDURE CYTOGENIC_L_CYTOBAND_01_LD
IS
   CURSOR cyto_cur
   IS
      (SELECT ROWNUM, A.ID SNP_ID, E.ID START_CYTOBAND_LOC_ID
	FROM   SNP_TV A, SNP_PROBESET_ANNO C, CYTOBAND E
	WHERE  A.DB_SNP_ID = C.DBSNP_RS_ID
	AND  C.CHR_CYTO = E.NAME);

    V_MAXROW NUMBER :=0;
	aID number:=0;

BEGIN

	EXECUTE IMMEDIATE('TRUNCATE TABLE CYTOGENIC_LOCATION_CYTOBAND REUSE STORAGE ');

	SELECT MAX(ID) INTO V_MAXROW FROM PHYSICAL_LOCATION;

   FOR erec IN cyto_cur LOOP

      aID := aID + 1;

      INSERT INTO CYTOGENIC_LOCATION_CYTOBAND (
	CYTOGENIC_LOCATION_ID,
	SNP_ID,
	START_CYTOBAND_LOC_ID)
      VALUES (erec.rownum + V_MAXROW,
	erec.SNP_ID,
	erec.START_CYTOBAND_LOC_ID);

      IF MOD (aID, 500) = 0
      THEN
         COMMIT;
      END IF;
   END LOOP;

   COMMIT;
END; 
/

