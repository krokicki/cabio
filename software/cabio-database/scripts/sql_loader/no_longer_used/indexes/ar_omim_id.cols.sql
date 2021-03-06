/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_OMIM_M_ID_GENECHIP_A on AR_OMIM_ID(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_OMIM_M_ID_OMIM_ID on AR_OMIM_ID(OMIM_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_OMIM_M_ID_PROBE_SET_ on AR_OMIM_ID(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
