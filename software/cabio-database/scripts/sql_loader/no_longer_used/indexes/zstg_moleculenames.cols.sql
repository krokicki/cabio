/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MOLAMES_SOURCE_ID on ZSTG_MOLECULENAMES(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_NAS_ID on ZSTG_MOLECULENAMES(NAS_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_GENE_ID on ZSTG_MOLECULENAMES(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_PROTEIN_ID on ZSTG_MOLECULENAMES(PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_VALUE on ZSTG_MOLECULENAMES(VALUE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_LONG_NAME_ on ZSTG_MOLECULENAMES(LONG_NAME_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_NAME_TYPE on ZSTG_MOLECULENAMES(NAME_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_MTYPE on ZSTG_MOLECULENAMES(MTYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_MOLECULE_I on ZSTG_MOLECULENAMES(MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
