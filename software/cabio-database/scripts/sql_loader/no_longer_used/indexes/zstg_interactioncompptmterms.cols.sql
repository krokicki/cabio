/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_INTERMS_MODIFICATI on ZSTG_INTERACTIONCOMPPTMTERMS(MODIFICATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_AA on ZSTG_INTERACTIONCOMPPTMTERMS(AA) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_POSITION on ZSTG_INTERACTIONCOMPPTMTERMS(POSITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_PROTEIN on ZSTG_INTERACTIONCOMPPTMTERMS(PROTEIN) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_ROLE_TYPE on ZSTG_INTERACTIONCOMPPTMTERMS(ROLE_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_MOLECULE_I on ZSTG_INTERACTIONCOMPPTMTERMS(MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_SOURCE_ID on ZSTG_INTERACTIONCOMPPTMTERMS(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTERMS_INTERACTIO on ZSTG_INTERACTIONCOMPPTMTERMS(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
