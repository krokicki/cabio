
create index ZSTG_RNASETS_ANNOTATION_lwr on ZSTG_RNA_PROBESETS(lower(ANNOTATION_DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_QTL_lwr on ZSTG_RNA_PROBESETS(lower(QTL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SGD_ACCESS_lwr on ZSTG_RNA_PROBESETS(lower(SGD_ACCESSION_NUMBER)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_RGD_NAME_lwr on ZSTG_RNA_PROBESETS(lower(RGD_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_MGI_NAME_lwr on ZSTG_RNA_PROBESETS(lower(MGI_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_WORMBASE_lwr on ZSTG_RNA_PROBESETS(lower(WORMBASE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_AGI_lwr on ZSTG_RNA_PROBESETS(lower(AGI)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_FLYBASE_lwr on ZSTG_RNA_PROBESETS(lower(FLYBASE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_REFSEQ_TRA_lwr on ZSTG_RNA_PROBESETS(lower(REFSEQ_TRANSCRIPT_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_REFSEQ_PRO_lwr on ZSTG_RNA_PROBESETS(lower(REFSEQ_PROTEIN_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_OMIM_lwr on ZSTG_RNA_PROBESETS(lower(OMIM)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_EC_lwr on ZSTG_RNA_PROBESETS(lower(EC)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ENTREZ_GEN_lwr on ZSTG_RNA_PROBESETS(lower(ENTREZ_GENE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ENSEMBL_lwr on ZSTG_RNA_PROBESETS(lower(ENSEMBL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_UNIGENE_CL_lwr on ZSTG_RNA_PROBESETS(lower(UNIGENE_CLUSTER_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_CHROMOSOMA_lwr on ZSTG_RNA_PROBESETS(lower(CHROMOSOMAL_LOCATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_GENE_SYMBO_lwr on ZSTG_RNA_PROBESETS(lower(GENE_SYMBOL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ALIGNMENTS_lwr on ZSTG_RNA_PROBESETS(lower(ALIGNMENTS)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_GENOME_VER_lwr on ZSTG_RNA_PROBESETS(lower(GENOME_VERSION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_UNIGENE_ID_lwr on ZSTG_RNA_PROBESETS(lower(UNIGENE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ARCHIVAL_U_lwr on ZSTG_RNA_PROBESETS(lower(ARCHIVAL_UNIGENE_CLUSTER)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_REPRESENTA_lwr on ZSTG_RNA_PROBESETS(lower(REPRESENTATIVE_PUBLIC_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_TARGET_DES_lwr on ZSTG_RNA_PROBESETS(lower(TARGET_DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_TRANSCRIPT_lwr on ZSTG_RNA_PROBESETS(lower(TRANSCRIPT_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SEQUENCE_S_lwr on ZSTG_RNA_PROBESETS(lower(SEQUENCE_SOURCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SEQUENCE_T_lwr on ZSTG_RNA_PROBESETS(lower(SEQUENCE_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_ANNOTATION_lwr on ZSTG_RNA_PROBESETS(lower(ANNOTATION_DATE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_SPECIES_SC_lwr on ZSTG_RNA_PROBESETS(lower(SPECIES_SCIENTIFIC_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_GENECHIP_A_lwr on ZSTG_RNA_PROBESETS(lower(GENECHIP_ARRAY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_RNASETS_PROBE_SET__lwr on ZSTG_RNA_PROBESETS(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
