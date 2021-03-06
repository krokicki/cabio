/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_SNPRTER_CYTO_STOP_lwr on ZSTG_SNP_REPORTER(lower(CYTO_STOP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPRTER_CYTO_START_lwr on ZSTG_SNP_REPORTER(lower(CYTO_START)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPRTER_PHAST_CONS_lwr on ZSTG_SNP_REPORTER(lower(PHAST_CONSERVATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPRTER_NAME_lwr on ZSTG_SNP_REPORTER(lower(NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
