
create index ZSTG_PID_PTM_PTM_lwr on ZSTG_PID_COMP_PARTCIPANT_PTM(lower(PTM)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;