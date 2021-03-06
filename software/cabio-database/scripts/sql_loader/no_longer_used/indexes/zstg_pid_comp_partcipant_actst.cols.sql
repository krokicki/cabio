/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PIDCTST_ACTIVITY_S on ZSTG_PID_COMP_PARTCIPANT_ACTST(ACTIVITY_STATE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDCTST_ORDER_OF_C on ZSTG_PID_COMP_PARTCIPANT_ACTST(ORDER_OF_COMPLEX) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDCTST_COMPLEX_ID on ZSTG_PID_COMP_PARTCIPANT_ACTST(COMPLEX_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
