/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PID_PTM_PTM on ZSTG_PID_FMLY_PRTPNT_PTM(PTM) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_PTM_MEMBER_ID on ZSTG_PID_FMLY_PRTPNT_PTM(MEMBER_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_PTM_FAMILY_ID on ZSTG_PID_FMLY_PRTPNT_PTM(FAMILY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
