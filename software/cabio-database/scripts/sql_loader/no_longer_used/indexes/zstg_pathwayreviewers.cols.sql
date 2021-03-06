/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PATWERS_REVIEWER_N on ZSTG_PATHWAYREVIEWERS(REVIEWER_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PATWERS_SOURCE_ID on ZSTG_PATHWAYREVIEWERS(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PATWERS_PATHWAY_ID on ZSTG_PATHWAYREVIEWERS(PATHWAY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
