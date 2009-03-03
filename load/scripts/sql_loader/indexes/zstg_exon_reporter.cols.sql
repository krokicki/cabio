
create index ZSTG_EXORTER_STOP_LOCAT on ZSTG_EXON_REPORTER(STOP_LOCATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_START_LOCA on ZSTG_EXON_REPORTER(START_LOCATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_CHROMOSOME on ZSTG_EXON_REPORTER(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_EXON_ID on ZSTG_EXON_REPORTER(EXON_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_TRANSCRIPT on ZSTG_EXON_REPORTER(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_STRAND on ZSTG_EXON_REPORTER(STRAND) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_PROBE_COUN on ZSTG_EXON_REPORTER(PROBE_COUNT) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_MANUFACTUR on ZSTG_EXON_REPORTER(MANUFACTURER_PSR_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_MICROARRAY on ZSTG_EXON_REPORTER(MICROARRAY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_NAME on ZSTG_EXON_REPORTER(NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXORTER_ID on ZSTG_EXON_REPORTER(ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
