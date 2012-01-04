
create index AR_ENTREGENE_GENECHIP_A on AR_ENTREZ_GENE(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ENTREGENE_ENTREZ_GEN on AR_ENTREZ_GENE(ENTREZ_GENE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ENTREGENE_PROBE_SET_ on AR_ENTREZ_GENE(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
