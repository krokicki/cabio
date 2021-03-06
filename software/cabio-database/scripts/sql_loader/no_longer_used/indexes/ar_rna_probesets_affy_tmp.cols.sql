/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_RNA_P_TMP_GENOME_VER on AR_RNA_PROBESETS_AFFY_TMP(GENOME_VERSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_ANNOTATION on AR_RNA_PROBESETS_AFFY_TMP(ANNOTATION_DATA) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_SPECIES_SC on AR_RNA_PROBESETS_AFFY_TMP(SPECIES_SCIENTIFIC_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_GENECHIP_A on AR_RNA_PROBESETS_AFFY_TMP(GENECHIP_ARRAY_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_PROBE_SET_ on AR_RNA_PROBESETS_AFFY_TMP(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_ID on AR_RNA_PROBESETS_AFFY_TMP(ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
