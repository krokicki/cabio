/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MOLAMES_SOURCE_ID_lwr on ZSTG_MOLECULENAMES(lower(SOURCE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_VALUE_lwr on ZSTG_MOLECULENAMES(lower(VALUE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_LONG_NAME__lwr on ZSTG_MOLECULENAMES(lower(LONG_NAME_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_NAME_TYPE_lwr on ZSTG_MOLECULENAMES(lower(NAME_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_MTYPE_lwr on ZSTG_MOLECULENAMES(lower(MTYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MOLAMES_MOLECULE_I_lwr on ZSTG_MOLECULENAMES(lower(MOLECULE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
