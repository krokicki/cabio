/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index PROTEIN_SION_ID on PROTEIN_SECONDARY_ACCESSION(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTEIN_SION_SECONDARY_ on PROTEIN_SECONDARY_ACCESSION(SECONDARY_ACCESSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTEIN_SION_PROTEIN_ID on PROTEIN_SECONDARY_ACCESSION(PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
