/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index LOCATIONN_TV_MARKER_ID on LOCATION_TV(MARKER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_CYTOBAND_I on LOCATION_TV(CYTOBAND_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_EXON_REPOR on LOCATION_TV(EXON_REPORTER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_TRANSCRIPT on LOCATION_TV(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_CHROMOSOME on LOCATION_TV(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_SNP_ID on LOCATION_TV(SNP_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_NUCLEIC_AC on LOCATION_TV(NUCLEIC_ACID_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_GENE_ID on LOCATION_TV(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index LOCATIONN_TV_ID on LOCATION_TV(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
