
create index EVIDENCECODE_EVIDENCE_C on EVIDENCE_EVIDENCE_CODE(EVIDENCE_CODE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EVIDENCECODE_EVIDENCE_I on EVIDENCE_EVIDENCE_CODE(EVIDENCE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
