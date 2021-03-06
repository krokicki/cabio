/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index CYTOGENIBAND_END_CYTOBA on CYTOGENIC_LOCATION_CYTOBAND(END_CYTOBAND_LOC_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CYTOGENIBAND_START_CYTO on CYTOGENIC_LOCATION_CYTOBAND(START_CYTOBAND_LOC_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CYTOGENIBAND_CHROMOSOME on CYTOGENIC_LOCATION_CYTOBAND(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CYTOGENIBAND_SNP_ID on CYTOGENIC_LOCATION_CYTOBAND(SNP_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CYTOGENIBAND_NUCLEIC_AC on CYTOGENIC_LOCATION_CYTOBAND(NUCLEIC_ACID_SEQUENCE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CYTOGENIBAND_GENE_ID on CYTOGENIC_LOCATION_CYTOBAND(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CYTOGENIBAND_CYTOGENIC_ on CYTOGENIC_LOCATION_CYTOBAND(CYTOGENIC_LOCATION_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
