/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

column columnprod new_value prod_tablspc;
select globals.get_production_tablespace as columnprod from dual;
CREATE INDEX RELATIVE_LOC_BIGID ON relative_location_ch(BIG_ID) TABLESPace 
&prod_tablspc;
CREATE INDEX RELATIVE_LOC_BIGID_LWR ON relative_location_ch(LOWER(BIG_ID)) 
TABLESPace &prod_tablspc;
@$LOAD/indexes/relative_location_ch.lower.sql 
@$LOAD/indexes/relative_location_ch.cols.sql 
@$LOAD/constraints/relative_location_ch.enable.sql 
CREATE INDEX REL_LOC_BIGID ON relative_location(BIG_ID) TABLESPace CAB
IO_FUT;
CREATE INDEX REL_LOC_BIGID_LWR ON relative_location(LOWER(BIG_ID)) TAB
LESPace 
&prod_tablspc;
@$LOAD/indexes/relative_location.cols.sql
@$LOAD/indexes/relative_location.lower.sql
@$LOAD/constraints/relative_location.enable.sql
exit;
