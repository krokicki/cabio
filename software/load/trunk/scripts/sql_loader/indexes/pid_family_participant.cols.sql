
create index PID_FAMIPANT_PHYSICAL_E on PID_FAMILY_PARTICIPANT(PHYSICAL_ENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_FAMIPANT_PARTICIPAN on PID_FAMILY_PARTICIPANT(PARTICIPANT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
