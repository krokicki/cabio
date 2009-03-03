
create index LOCATIONN_CH_ASSEMBLY on LOCATION_CH(ASSEMBLY) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_FEATURE_TY on LOCATION_CH(FEATURE_TYPE) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CYTO_REPOR on LOCATION_CH(CYTO_REPORTER_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_ARRAY_REPO on LOCATION_CH(ARRAY_REPORTER_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_MARKER_ID on LOCATION_CH(MARKER_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CYTO_SNP_I on LOCATION_CH(CYTO_SNP_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CYTO_GENE_ on LOCATION_CH(CYTO_GENE_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_DISCRIMINA on LOCATION_CH(DISCRIMINATOR) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_END_CYTOBA on LOCATION_CH(END_CYTOBAND_LOC_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_START_CYTO on LOCATION_CH(START_CYTOBAND_LOC_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CYTOBAND_I on LOCATION_CH(CYTOBAND_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_EXON_REPOR on LOCATION_CH(EXON_REPORTER_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_TRANSCRIPT on LOCATION_CH(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CHROMOSOMA on LOCATION_CH(CHROMOSOMAL_END_POSITION) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CHROMOSOMA on LOCATION_CH(CHROMOSOMAL_START_POSITION) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_CHROMOSOME on LOCATION_CH(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_SNP_ID on LOCATION_CH(SNP_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_NUCLEIC_AC on LOCATION_CH(NUCLEIC_ACID_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_GENE_ID on LOCATION_CH(GENE_ID) PARALLEL NOLOGGING tablespace cabio_fut;
create index LOCATIONN_CH_ID on LOCATION_CH(ID) PARALLEL NOLOGGING tablespace cabio_fut;

--EXIT;
