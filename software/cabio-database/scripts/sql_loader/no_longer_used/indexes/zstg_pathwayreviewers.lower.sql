/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PATWERS_REVIEWER_N_lwr on ZSTG_PATHWAYREVIEWERS(lower(REVIEWER_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PATWERS_SOURCE_ID_lwr on ZSTG_PATHWAYREVIEWERS(lower(SOURCE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PATWERS_PATHWAY_ID_lwr on ZSTG_PATHWAYREVIEWERS(lower(PATHWAY_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
