/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PIDHWAY_REVIEWER_S_lwr on ZSTG_PID_PATHWAY(lower(REVIEWER_STRING)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDHWAY_CURATOR_ST_lwr on ZSTG_PID_PATHWAY(lower(CURATOR_STRING)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDHWAY_IS_SUBNET_lwr on ZSTG_PID_PATHWAY(lower(IS_SUBNET)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDHWAY_LONGNAME_lwr on ZSTG_PID_PATHWAY(lower(LONGNAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDHWAY_SHORTNAME_lwr on ZSTG_PID_PATHWAY(lower(SHORTNAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDHWAY_SOURCE_lwr on ZSTG_PID_PATHWAY(lower(SOURCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
