
create index ZSTG_BIOESCR_PATH_ID on ZSTG_BIOPATHWAY_DESCR(PATH_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;