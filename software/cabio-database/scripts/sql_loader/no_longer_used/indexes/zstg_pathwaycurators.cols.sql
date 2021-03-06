/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PATTORS_CURATOR_NA on ZSTG_PATHWAYCURATORS(CURATOR_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PATTORS_SOURCE_ID on ZSTG_PATHWAYCURATORS(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PATTORS_PATHWAY_ID on ZSTG_PATHWAYCURATORS(PATHWAY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
