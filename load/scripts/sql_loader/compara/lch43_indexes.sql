
CREATE INDEX CABIODEV.LOC43_ID ON CABIODEV.LOCATION_CH_43
(ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_REPORTER_ID ON CABIODEV.LOCATION_CH_43
(ARRAY_REPORTER_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_ASSEMBLY ON CABIODEV.LOCATION_CH_43
(ASSEMBLY)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_ASSEMBLY_LWR ON CABIODEV.LOCATION_CH_43
(LOWER("ASSEMBLY"))
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_BIG_ID ON CABIODEV.LOCATION_CH_43
(BIG_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_BIG_ID_LWR ON CABIODEV.LOCATION_CH_43
(LOWER("BIG_ID"))
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_CHROM_START ON CABIODEV.LOCATION_CH_43
(CHROMOSOMAL_START_POSITION)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_CHROM_END ON CABIODEV.LOCATION_CH_43
(CHROMOSOMAL_END_POSITION)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_CHROMOSOME_ID ON CABIODEV.LOCATION_CH_43
(CHROMOSOME_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_CYTOBAND_ID ON CABIODEV.LOCATION_CH_43
(CYTOBAND_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_CYTOGENE_ID ON CABIODEV.LOCATION_CH_43
(CYTO_GENE_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_CYTOREPORTER_ID ON CABIODEV.LOCATION_CH_43
(CYTO_REPORTER_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_CYTOSNP_ID ON CABIODEV.LOCATION_CH_43
(CYTO_SNP_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_DISCRIMINATOR ON CABIODEV.LOCATION_CH_43
(DISCRIMINATOR)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_DISCRIMINATOR_LWR ON CABIODEV.LOCATION_CH_43
(LOWER("DISCRIMINATOR"))
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_START_CYTO_ID ON CABIODEV.LOCATION_CH_43
(START_CYTOBAND_LOC_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_END_CYTO_ID ON CABIODEV.LOCATION_CH_43
(END_CYTOBAND_LOC_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_EXON_REPORTER_ID ON CABIODEV.LOCATION_CH_43
(EXON_REPORTER_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_FEATURE_TYPE ON CABIODEV.LOCATION_CH_43
(FEATURE_TYPE)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE BITMAP INDEX CABIODEV.LOC43_FEATURE_TYPE_LWR ON CABIODEV.LOCATION_CH_43
(LOWER("FEATURE_TYPE"))
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_GENE_ID ON CABIODEV.LOCATION_CH_43
(GENE_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_MARKER_ID ON CABIODEV.LOCATION_CH_43
(MARKER_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_MULTIALIGN_ID ON CABIODEV.LOCATION_CH_43
(MULTIPLE_ALIGNMENT_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_SEQUENCE_ID ON CABIODEV.LOCATION_CH_43
(NUCLEIC_ACID_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_SNP_ID ON CABIODEV.LOCATION_CH_43
(SNP_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_TRANSCRIPT_ID ON CABIODEV.LOCATION_CH_43
(TRANSCRIPT_ID)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );


CREATE INDEX CABIODEV.LOC43_RANGE_QUERY ON CABIODEV.LOCATION_CH_43
(CHROMOSOME_ID, LOWER("ASSEMBLY"), CHROMOSOMAL_START_POSITION, CHROMOSOMAL_END_POSITION)
NOLOGGING
TABLESPACE CABIO_FUT
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
PARALLEL ( DEGREE DEFAULT INSTANCES DEFAULT );

