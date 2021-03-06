/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MOUBAND_CYTOBAND on ZSTG_MOUSE_CYTOBAND(CYTOBAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_ID on ZSTG_MOUSE_CYTOBAND(ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROMOSOME on ZSTG_MOUSE_CYTOBAND(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROMOSOME on ZSTG_MOUSE_CYTOBAND(CHROMOSOME_NO) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_STAIN on ZSTG_MOUSE_CYTOBAND(STAIN) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CYTONAME on ZSTG_MOUSE_CYTOBAND(CYTONAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROMEND on ZSTG_MOUSE_CYTOBAND(CHROMEND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROMSTART on ZSTG_MOUSE_CYTOBAND(CHROMSTART) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOUBAND_CHROM on ZSTG_MOUSE_CYTOBAND(CHROM) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
