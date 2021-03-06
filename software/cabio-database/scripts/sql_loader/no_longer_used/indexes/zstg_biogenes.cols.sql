/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_BIOENES_TAXON_ID on ZSTG_BIOGENES(TAXON_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_BIOENES_LOCUS_ID on ZSTG_BIOGENES(LOCUS_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_BIOENES_BC_ID on ZSTG_BIOGENES(BC_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_BIOENES_PATHWAY_NA on ZSTG_BIOGENES(PATHWAY_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
