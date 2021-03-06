/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_MICLITE_RELATIVE_P on ZSTG_MICROSATELLITE(RELATIVE_POSITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MICLITE_MARKER on ZSTG_MICROSATELLITE(MARKER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MICLITE_DISTANCE on ZSTG_MICROSATELLITE(DISTANCE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MICLITE_PROBE_SET_ on ZSTG_MICROSATELLITE(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
