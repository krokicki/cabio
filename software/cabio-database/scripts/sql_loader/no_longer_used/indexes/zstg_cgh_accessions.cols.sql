/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_CGHIONS_ACCESSION on ZSTG_CGH_ACCESSIONS(ACCESSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CGHIONS_SOURCE on ZSTG_CGH_ACCESSIONS(SOURCE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CGHIONS_IND on ZSTG_CGH_ACCESSIONS(IND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_CGHIONS_PROBE_SET_ on ZSTG_CGH_ACCESSIONS(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
