
create index ZSTG_HUM_EST_QNAME on ZSTG_HUMAN_EST(QNAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUM_EST_TNAME on ZSTG_HUMAN_EST(TNAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUM_EST_TSTART on ZSTG_HUMAN_EST(TSTART) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUM_EST_TEND on ZSTG_HUMAN_EST(TEND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUM_EST_CHROMOSOME on ZSTG_HUMAN_EST(CHROMOSOME_NO) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUM_EST_CHROMOSOME on ZSTG_HUMAN_EST(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
