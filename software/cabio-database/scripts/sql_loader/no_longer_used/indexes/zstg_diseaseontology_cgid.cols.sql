/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_DISCGID_EVS_ID on ZSTG_DISEASEONTOLOGY_CGID(EVS_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_DISCGID_DISEASEONT on ZSTG_DISEASEONTOLOGY_CGID(DISEASEONTOLOGY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_DISCGID_ID on ZSTG_DISEASEONTOLOGY_CGID(ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
