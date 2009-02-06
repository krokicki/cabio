
create index GENE_TVE_TV_GENE_ID on GENE_TV(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_FULL_NAME on GENE_TV(FULL_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_SYMBOL on GENE_TV(SYMBOL) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_CLUSTER_ID on GENE_TV(CLUSTER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_CHROMOSOME on GENE_TV(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_TAXON_ID on GENE_TV(TAXON_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_ENGINEERED on GENE_TV(ENGINEEREDGENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_TVE_TV_HUGO_SYMBO on GENE_TV(HUGO_SYMBOL) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;