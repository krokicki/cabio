
create index ZSTG_RNASETS_PROBE_SET_ on ZSTG_RNA_PROBESETS(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_GENECHIP_A on ZSTG_RNA_PROBESETS(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SPECIES_SC on ZSTG_RNA_PROBESETS(SPECIES_SCIENTIFIC_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ANNOTATION on ZSTG_RNA_PROBESETS(ANNOTATION_DATE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SEQUENCE_T on ZSTG_RNA_PROBESETS(SEQUENCE_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SEQUENCE_S on ZSTG_RNA_PROBESETS(SEQUENCE_SOURCE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_TRANSCRIPT on ZSTG_RNA_PROBESETS(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_TARGET_DES on ZSTG_RNA_PROBESETS(TARGET_DESCRIPTION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_REPRESENTA on ZSTG_RNA_PROBESETS(REPRESENTATIVE_PUBLIC_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ARCHIVAL_U on ZSTG_RNA_PROBESETS(ARCHIVAL_UNIGENE_CLUSTER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_UNIGENE_ID on ZSTG_RNA_PROBESETS(UNIGENE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_GENOME_VER on ZSTG_RNA_PROBESETS(GENOME_VERSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ALIGNMENTS on ZSTG_RNA_PROBESETS(ALIGNMENTS) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_GENE_SYMBO on ZSTG_RNA_PROBESETS(GENE_SYMBOL) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_CHROMOSOMA on ZSTG_RNA_PROBESETS(CHROMOSOMAL_LOCATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_UNIGENE_CL on ZSTG_RNA_PROBESETS(UNIGENE_CLUSTER_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ENSEMBL on ZSTG_RNA_PROBESETS(ENSEMBL) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ENTREZ_GEN on ZSTG_RNA_PROBESETS(ENTREZ_GENE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_EC on ZSTG_RNA_PROBESETS(EC) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_OMIM on ZSTG_RNA_PROBESETS(OMIM) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_REFSEQ_PRO on ZSTG_RNA_PROBESETS(REFSEQ_PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_REFSEQ_TRA on ZSTG_RNA_PROBESETS(REFSEQ_TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_FLYBASE on ZSTG_RNA_PROBESETS(FLYBASE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_AGI on ZSTG_RNA_PROBESETS(AGI) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_WORMBASE on ZSTG_RNA_PROBESETS(WORMBASE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_MGI_NAME on ZSTG_RNA_PROBESETS(MGI_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_RGD_NAME on ZSTG_RNA_PROBESETS(RGD_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SGD_ACCESS on ZSTG_RNA_PROBESETS(SGD_ACCESSION_NUMBER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_QTL on ZSTG_RNA_PROBESETS(QTL) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ANNOTATION on ZSTG_RNA_PROBESETS(ANNOTATION_DESCRIPTION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
