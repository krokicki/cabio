CREATE OR REPLACE PROCEDURE Phy_Loc1 AS
   CURSOR PHYCUR IS
      (SELECT ACC_START, ACC_END, B.ID, CHROMOSOME_ID
       FROM NAUTILUSDEV.ACC_CHR_POSITION@GONAU1.NCI.NIH.GOV A,
       NUCLEIC_ACID_SEQUENCE B,
       CHROMOSOME C
       WHERE A.CHROMOSOME = C.CHROMOSOME_NUMBER
       AND B.ACCESSION_NUMBER = A.ACCESSION_NUM);
   V_COUNT NUMBER:=0;
BEGIN
   FOR aRec IN PHYCUR LOOP
      V_COUNT := V_COUNT + 1;
      INSERT INTO PHYSICAL_LOCATION(ID, CHROMOSOMAL_START_POSITION, CHROMOSOMAL_END_POSITION, NUCLEIC_ACID_ID, CHROMOSOME_ID)
                             VALUES(V_COUNT, aRec.ACC_START, aRec.ACC_END, aRec.ID, aRec.CHROMOSOME_ID);
      IF MOD(V_COUNT, 100) = 0 THEN
         COMMIT;
      END IF;
   END LOOP;
END; 
/

