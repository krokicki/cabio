/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_GO_MOTION_GENECHIP_A_lwr on AR_GO_MOLECULAR_FUNCTION(lower(GENECHIP_ARRAY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MOTION_EVIDENCE_lwr on AR_GO_MOLECULAR_FUNCTION(lower(EVIDENCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MOTION_DESCRIPTIO_lwr on AR_GO_MOLECULAR_FUNCTION(lower(DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MOTION_PROBE_SET__lwr on AR_GO_MOLECULAR_FUNCTION(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
