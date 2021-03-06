/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MAP_MAP_END_CYTOBA_lwr on ZSTG_MAP(lower(END_CYTOBAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_START_CYTO_lwr on ZSTG_MAP(lower(START_CYTOBAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_CHROMOSOME_lwr on ZSTG_MAP(lower(CHROMOSOME_NUMBER)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_CYTOBAND_lwr on ZSTG_MAP(lower(CYTOBAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_MAP_LOCATI_lwr on ZSTG_MAP(lower(MAP_LOCATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MAP_MAP_MAP_TYPE_lwr on ZSTG_MAP(lower(MAP_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
