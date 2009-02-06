
create index PROTEIN_MAIN_ACCESSION__lwr on PROTEIN_DOMAIN(lower(ACCESSION_NUMBER)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTEIN_MAIN_DESCRIPTIO_lwr on PROTEIN_DOMAIN(lower(DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTEIN_MAIN_TYPE_lwr on PROTEIN_DOMAIN(lower(TYPE)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
