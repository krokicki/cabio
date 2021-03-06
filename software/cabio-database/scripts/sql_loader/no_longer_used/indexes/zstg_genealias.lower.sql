/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_GENLIAS_TYPE_lwr on ZSTG_GENEALIAS(lower(TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENLIAS_SYNONYMS_lwr on ZSTG_GENEALIAS(lower(SYNONYMS)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENLIAS_SYMBOL_lwr on ZSTG_GENEALIAS(lower(SYMBOL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENLIAS_LOCUSLINKI_lwr on ZSTG_GENEALIAS(lower(LOCUSLINKID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
