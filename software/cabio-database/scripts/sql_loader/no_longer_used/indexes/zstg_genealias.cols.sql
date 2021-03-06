/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_GENLIAS_TYPE on ZSTG_GENEALIAS(TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENLIAS_SYNONYMS on ZSTG_GENEALIAS(SYNONYMS) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENLIAS_SYMBOL on ZSTG_GENEALIAS(SYMBOL) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENLIAS_LOCUSLINKI on ZSTG_GENEALIAS(LOCUSLINKID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
