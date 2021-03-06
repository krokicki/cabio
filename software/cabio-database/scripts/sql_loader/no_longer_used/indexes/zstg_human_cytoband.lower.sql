/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_HUMBAND_CYTOBAND_lwr on ZSTG_HUMAN_CYTOBAND(lower(CYTOBAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMBAND_ID_lwr on ZSTG_HUMAN_CYTOBAND(lower(ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMBAND_CHROMOSOME_lwr on ZSTG_HUMAN_CYTOBAND(lower(CHROMOSOME_NO)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMBAND_STAIN_lwr on ZSTG_HUMAN_CYTOBAND(lower(STAIN)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMBAND_CYTONAME_lwr on ZSTG_HUMAN_CYTOBAND(lower(CYTONAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMBAND_CHROM_lwr on ZSTG_HUMAN_CYTOBAND(lower(CHROM)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
