/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index HISTOLOGCODE_EVS_ID_lwr on HISTOLOGY_CODE(lower(EVS_ID)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HISTOLOGCODE_RELATIONSH_lwr on HISTOLOGY_CODE(lower(RELATIONSHIP)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HISTOLOGCODE_CONCEPT_ID_lwr on HISTOLOGY_CODE(lower(CONCEPT_ID)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HISTOLOGCODE_HISTOLOGY__lwr on HISTOLOGY_CODE(lower(HISTOLOGY_NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
