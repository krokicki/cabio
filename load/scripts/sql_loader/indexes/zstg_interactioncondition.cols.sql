
create index ZSTG_INTTION_CONDITION on ZSTG_INTERACTIONCONDITION(CONDITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTTION_CONDITION_ on ZSTG_INTERACTIONCONDITION(CONDITION_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTTION_SOURCE_ID on ZSTG_INTERACTIONCONDITION(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTTION_INTERACTIO on ZSTG_INTERACTIONCONDITION(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
