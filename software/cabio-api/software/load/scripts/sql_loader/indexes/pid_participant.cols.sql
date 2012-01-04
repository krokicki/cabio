
create index PID_PARTPANT_PID_MEMBER on PID_PARTICIPANT(PID_MEMBER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PID_FAMILY on PID_PARTICIPANT(PID_FAMILY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PID_COMPLE on PID_PARTICIPANT(PID_COMPLEX_COMPONENT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PID_PHYSIC on PID_PARTICIPANT(PID_PHYSICALENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PID_INTERA on PID_PARTICIPANT(PID_INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PHYSICAL_E on PID_PARTICIPANT(PHYSICAL_ENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_COMPLEX_EN on PID_PARTICIPANT(COMPLEX_ENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_INTERACTIO on PID_PARTICIPANT(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_DISCRIMINA on PID_PARTICIPANT(DISCRIMINATOR) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_CONDITION_ on PID_PARTICIPANT(CONDITION_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_ACTIVITY_S on PID_PARTICIPANT(ACTIVITY_STATE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PTM on PID_PARTICIPANT(PTM) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_LOCATION on PID_PARTICIPANT(LOCATION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_ID on PID_PARTICIPANT(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PID_COMPLE on PID_PARTICIPANT(PID_COMPLEX_ENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PID_COMPLE on PID_PARTICIPANT(PID_COMPLEX_COMPONENT_ORDER) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
