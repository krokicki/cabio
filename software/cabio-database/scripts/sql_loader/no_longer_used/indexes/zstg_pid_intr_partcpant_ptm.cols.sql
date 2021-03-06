/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PID_PTM_PTM on ZSTG_PID_INTR_PARTCPANT_PTM(PTM) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_PTM_ORDER_OF_I on ZSTG_PID_INTR_PARTCPANT_PTM(ORDER_OF_INTERACTION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_PTM_INTERACTIO on ZSTG_PID_INTR_PARTCPANT_PTM(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_PTM_PID_PHYSIC on ZSTG_PID_INTR_PARTCPANT_PTM(PID_PHYSICALENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
