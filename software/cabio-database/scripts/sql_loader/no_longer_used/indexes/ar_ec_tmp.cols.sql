/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_EC_TM_TMP_GENECHIP_A on AR_EC_TMP(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_EC_TM_TMP_EC on AR_EC_TMP(EC) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_EC_TM_TMP_PROBE_SET_ on AR_EC_TMP(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
