/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index EXON_REPRTER_EXON_ID on EXON_REPORTER(EXON_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_TRANSCRIPT on EXON_REPORTER(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_STRAND on EXON_REPORTER(STRAND) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_PROBE_COUN on EXON_REPORTER(PROBE_COUNT) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_MANUFACTUR on EXON_REPORTER(MANUFACTURER_PSR_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_MICROARRAY on EXON_REPORTER(MICROARRAY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_NAME on EXON_REPORTER(NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXON_REPRTER_ID on EXON_REPORTER(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;