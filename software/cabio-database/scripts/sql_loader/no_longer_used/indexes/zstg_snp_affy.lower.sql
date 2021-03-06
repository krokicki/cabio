/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_SNPAFFY_CHROMOSOME_lwr on ZSTG_SNP_AFFY(lower(CHROMOSOME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_DBSNP_RS_I_lwr on ZSTG_SNP_AFFY(lower(DBSNP_RS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_AFFY_SNP_I_lwr on ZSTG_SNP_AFFY(lower(AFFY_SNP_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_PROBE_SET__lwr on ZSTG_SNP_AFFY(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ARRAY_NAME_lwr on ZSTG_SNP_AFFY(lower(ARRAY_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_COPY_NUM_V_lwr on ZSTG_SNP_AFFY(lower(COPY_NUM_VARIATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_STRAND_VS__lwr on ZSTG_SNP_AFFY(lower(STRAND_VS_DBSNP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_IN_HAPMAP_lwr on ZSTG_SNP_AFFY(lower(IN_HAPMAP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_NUM_CHRM_lwr on ZSTG_SNP_AFFY(lower(NUM_CHRM)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_HET_FREQ_lwr on ZSTG_SNP_AFFY(lower(HET_FREQ)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ALLELE_FRE_lwr on ZSTG_SNP_AFFY(lower(ALLELE_FREQ)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_FRAGMENT_L_lwr on ZSTG_SNP_AFFY(lower(FRAGMENT_LENGTH_START_STOP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_MICROSATEL_lwr on ZSTG_SNP_AFFY(lower(MICROSATELLITE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_GENETIC_MA_lwr on ZSTG_SNP_AFFY(lower(GENETIC_MAP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ALLELE_B_lwr on ZSTG_SNP_AFFY(lower(ALLELE_B)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_ALLELE_A_lwr on ZSTG_SNP_AFFY(lower(ALLELE_A)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_FLANK_lwr on ZSTG_SNP_AFFY(lower(FLANK)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_CYTOBAND_lwr on ZSTG_SNP_AFFY(lower(CYTOBAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_CHRX_PSEUD_lwr on ZSTG_SNP_AFFY(lower(CHRX_PSEUDO_AUTOSOMAL_REGION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_STRAND_lwr on ZSTG_SNP_AFFY(lower(STRAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_PHYSICAL_P_lwr on ZSTG_SNP_AFFY(lower(PHYSICAL_POSITION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_DB_SNP_VER_lwr on ZSTG_SNP_AFFY(lower(DB_SNP_VERSION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SNPAFFY_GENOME_VER_lwr on ZSTG_SNP_AFFY(lower(GENOME_VERSION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
