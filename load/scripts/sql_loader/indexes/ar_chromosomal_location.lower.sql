
create index AR_CHROMTION_GENECHIP_A_lwr on AR_CHROMOSOMAL_LOCATION(lower(GENECHIP_ARRAY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_ASSEMBLY_lwr on AR_CHROMOSOMAL_LOCATION(lower(ASSEMBLY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_TRIM_CHR_lwr on AR_CHROMOSOMAL_LOCATION(lower(TRIM_CHR)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_CYTO_STOP_lwr on AR_CHROMOSOMAL_LOCATION(lower(CYTO_STOP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_CYTO_START_lwr on AR_CHROMOSOMAL_LOCATION(lower(CYTO_START)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_CHROMOSOME_lwr on AR_CHROMOSOMAL_LOCATION(lower(CHROMOSOME_NUMBER)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_CHROMOSOMA_lwr on AR_CHROMOSOMAL_LOCATION(lower(CHROMOSOMAL_LOCATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_CHROMTION_PROBE_SET__lwr on AR_CHROMOSOMAL_LOCATION(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
