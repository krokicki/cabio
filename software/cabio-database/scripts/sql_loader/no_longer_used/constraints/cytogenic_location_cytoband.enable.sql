/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create unique index SYS_C0021080_idx on CYTOGENIC_LOCATION_CYTOBAND
(END_CYTOBAND_LOC_ID,START_CYTOBAND_LOC_ID,CHROMOSOME_ID,SNP_ID,NUCLEIC_ACID_SEQUENCE_ID,GENE_ID) tablespace CABIO_FUT;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080 using index SYS_C0021080_idx;
create unique index SYTO_LOC_SYTO_PK_idx on CYTOGENIC_LOCATION_CYTOBAND
(CYTOGENIC_LOCATION_ID) tablespace CABIO_FUT;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYTO_LOC_SYTO_PK using index SYTO_LOC_SYTO_PK_idx;

alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C0021080;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C004375;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C004376;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C004377;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYS_C004378;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint SYTO_LOC_SYTO_PK;

alter table CYTOGENIC_LOCATION_CYTOBAND enable primary key;

--EXIT;
