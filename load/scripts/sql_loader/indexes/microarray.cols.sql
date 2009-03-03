
create index MICROARRRRAY_LSID on MICROARRAY(LSID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_ACCESSION on MICROARRAY(ACCESSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_DESCRIPTIO on MICROARRAY(DESCRIPTION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_TYPE on MICROARRAY(TYPE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_PLATFORM on MICROARRAY(PLATFORM) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_DBSNP_VERS on MICROARRAY(DBSNP_VERSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_GENOME_VER on MICROARRAY(GENOME_VERSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_ANNOTATION on MICROARRAY(ANNOTATION_DATE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_ARRAY_NAME on MICROARRAY(ARRAY_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MICROARRRRAY_ID on MICROARRAY(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
