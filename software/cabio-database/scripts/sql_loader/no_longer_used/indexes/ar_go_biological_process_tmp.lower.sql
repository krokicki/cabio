/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_GO_BI_TMP_GENECHIP_A_lwr on AR_GO_BIOLOGICAL_PROCESS_TMP(lower(GENECHIP_ARRAY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_BI_TMP_EVIDENCE_lwr on AR_GO_BIOLOGICAL_PROCESS_TMP(lower(EVIDENCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_BI_TMP_DESCRIPTIO_lwr on AR_GO_BIOLOGICAL_PROCESS_TMP(lower(DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_BI_TMP_PROBE_SET__lwr on AR_GO_BIOLOGICAL_PROCESS_TMP(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
