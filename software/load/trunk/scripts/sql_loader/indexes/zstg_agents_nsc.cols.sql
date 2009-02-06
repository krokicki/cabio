
create index ZSTG_AGE_NSC_NSC_NUMBER on ZSTG_AGENTS_NSC(NSC_NUMBER) PARALLEL NOLOGGING tablespace CABIO_MAP;
create index ZSTG_AGE_NSC_AGENT_NAME on ZSTG_AGENTS_NSC(AGENT_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP;

--EXIT;
