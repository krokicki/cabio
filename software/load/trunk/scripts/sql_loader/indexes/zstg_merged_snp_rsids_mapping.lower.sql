
create index ZSTG_MERPING_OLD_RS_ID_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(OLD_RS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_NEW_RS_ID_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(NEW_RS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_BUILD_ID_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(BUILD_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_ORIENTATIO_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(ORIENTATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_CREATE_TIM_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(CREATE_TIME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_LAST_UPDAT_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(LAST_UPDATE_TIME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_CURRENT_RS_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(CURRENT_RS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_MERPING_ORIEN2CURR_lwr on ZSTG_MERGED_SNP_RSIDS_MAPPING(lower(ORIEN2CURRENT)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
