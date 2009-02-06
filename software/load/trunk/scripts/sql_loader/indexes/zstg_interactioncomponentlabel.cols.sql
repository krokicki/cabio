
create index ZSTG_INTABEL_INTERACTIO on ZSTG_INTERACTIONCOMPONENTLABEL(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTABEL_SOURCE_ID on ZSTG_INTERACTIONCOMPONENTLABEL(SOURCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTABEL_MOLECULE_I on ZSTG_INTERACTIONCOMPONENTLABEL(MOLECULE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTABEL_ROLE_TYPE on ZSTG_INTERACTIONCOMPONENTLABEL(ROLE_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTABEL_LABEL_TYPE on ZSTG_INTERACTIONCOMPONENTLABEL(LABEL_TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTABEL_VALUE on ZSTG_INTERACTIONCOMPONENTLABEL(VALUE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
