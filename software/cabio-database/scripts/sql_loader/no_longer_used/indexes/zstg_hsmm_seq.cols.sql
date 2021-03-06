/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_HSM_SEQ_CLONE_ID on ZSTG_HSMM_SEQ(CLONE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HSM_SEQ_SEQUENCE_T on ZSTG_HSMM_SEQ(SEQUENCE_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HSM_SEQ_VERSION on ZSTG_HSMM_SEQ(VERSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HSM_SEQ_ACCESSION_ on ZSTG_HSMM_SEQ(ACCESSION_NUMBER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HSM_SEQ_ID on ZSTG_HSMM_SEQ(ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
