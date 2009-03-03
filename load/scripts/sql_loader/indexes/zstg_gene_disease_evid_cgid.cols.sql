
create index ZSTG_GENCGID_ROLE_ID on ZSTG_GENE_DISEASE_EVID_CGID(ROLE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENCGID_EVIDENCE_I on ZSTG_GENE_DISEASE_EVID_CGID(EVIDENCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENCGID_DISEASE_ID on ZSTG_GENE_DISEASE_EVID_CGID(DISEASE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENCGID_GENE_ID on ZSTG_GENE_DISEASE_EVID_CGID(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
