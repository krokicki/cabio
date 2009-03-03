
create index ZSTG_HUMMRNA_CHROMOSOME_lwr on ZSTG_HUMAN_MRNA(lower(CHROMOSOME_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMMRNA_CHROMOSOME_lwr on ZSTG_HUMAN_MRNA(lower(CHROMOSOME_NO)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMMRNA_TNAME_lwr on ZSTG_HUMAN_MRNA(lower(TNAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_HUMMRNA_QNAME_lwr on ZSTG_HUMAN_MRNA(lower(QNAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
