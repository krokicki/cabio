
create index PROTEIN_OUND_VALUE_lwr on PROTEIN_COMPOUND(lower(VALUE)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
