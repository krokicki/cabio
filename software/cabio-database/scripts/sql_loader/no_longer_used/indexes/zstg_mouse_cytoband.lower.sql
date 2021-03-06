/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MOUBAND_CYTOBAND_lwr on ZSTG_MOUSE_CYTOBAND(lower(CYTOBAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_ID_lwr on ZSTG_MOUSE_CYTOBAND(lower(ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROMOSOME_lwr on ZSTG_MOUSE_CYTOBAND(lower(CHROMOSOME_NO)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_STAIN_lwr on ZSTG_MOUSE_CYTOBAND(lower(STAIN)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CYTONAME_lwr on ZSTG_MOUSE_CYTOBAND(lower(CYTONAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROM_lwr on ZSTG_MOUSE_CYTOBAND(lower(CHROM)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
