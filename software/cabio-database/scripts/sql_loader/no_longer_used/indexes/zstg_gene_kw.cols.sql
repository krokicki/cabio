/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_GENE_KW_GENE_ID on ZSTG_GENE_KW(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENE_KW_KEYWORD on ZSTG_GENE_KW(KEYWORD) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENE_KW_LIBRARY_ID on ZSTG_GENE_KW(LIBRARY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENE_KW_CLUSTER_NU on ZSTG_GENE_KW(CLUSTER_NUMBER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
