/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index EXONEXON_TRANSCRIPT on EXON(TRANSCRIPT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXONEXON_SOURCE on EXON(SOURCE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXONEXON_MANUFACTUR on EXON(MANUFACTURER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index EXONEXON_ID on EXON(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
