/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create or replace procedure CLONE_TV31_LD as

  CURSOR CLONETVCUR IS
  (SELECT	a.Taxon_ID Taxon_ID,
	a.CLONE_ID CLONE_ID,
          a.CLONE_NAME CLONE_NAME,
          b.LIBRARY_ID LIBRARY_ID,
          DECODE(SUBSTR(a.CLONE_NAME, 1, 5), 'IMAGE', 'IMAGE', NULL) CLONE_TYPE
   FROM CLONE_stg31 a, library b
	where a.UNIGENE_LIBRARY_ID = b.unigene_ID);

  aID number:=0;

BEGIN

   EXECUTE IMMEDIATE('TRUNCATE TABLE CLONE_TV REUSE STORAGE ');
   EXECUTE IMMEDIATE('TRUNCATE TABLE Clone_Taxon REUSE STORAGE ');

   FOR aRec in CLONETVCUR LOOP

      aID := aID + 1;

      INSERT INTO CLONE_TV(CLONE_ID, CLONE_NAME, LIBRARY_ID, TYPE)
      VALUES (aRec.CLONE_ID,
              aRec.CLONE_NAME,
              aRec.LIBRARY_ID,
              aRec.CLONE_TYPE);

      INSERT INTO CLONE_taxon(CLONE_ID, TAXON_ID )
      VALUES (aRec.CLONE_ID,
              aRec.taxon_ID);

      IF MOD(aID, 500) = 0 THEN
         COMMIT;
      END IF;

   END LOOP;

COMMIT;

END; 
/