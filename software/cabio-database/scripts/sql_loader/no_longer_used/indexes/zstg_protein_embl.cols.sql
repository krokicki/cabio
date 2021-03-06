/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PROEMBL_ACC_NUM on ZSTG_PROTEIN_EMBL(ACC_NUM) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PROEMBL_PROTEIN_ID on ZSTG_PROTEIN_EMBL(PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PROEMBL_ID on ZSTG_PROTEIN_EMBL(ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
