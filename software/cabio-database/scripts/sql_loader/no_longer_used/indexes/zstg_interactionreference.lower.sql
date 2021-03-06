/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_INTENCE_PMID_lwr on ZSTG_INTERACTIONREFERENCE(lower(PMID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTENCE_REFERENCE_lwr on ZSTG_INTERACTIONREFERENCE(lower(REFERENCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTENCE_SOURCE_ID_lwr on ZSTG_INTERACTIONREFERENCE(lower(SOURCE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTENCE_INTERACTIO_lwr on ZSTG_INTERACTIONREFERENCE(lower(INTERACTION_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
