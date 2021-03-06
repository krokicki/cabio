/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index PROTOCOLASES_CONCEPT_ID on PROTOCOL_DISEASES(CONCEPT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_HISTOLOGY_ on PROTOCOL_DISEASES(HISTOLOGY_CODE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_DISEASE_CA on PROTOCOL_DISEASES(DISEASE_CATEGORY) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_DISEASE_SU on PROTOCOL_DISEASES(DISEASE_SUB_CATEGORY) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_CTEP_NAME on PROTOCOL_DISEASES(CTEP_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_IMT_CODE on PROTOCOL_DISEASES(IMT_CODE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_PRO_ID on PROTOCOL_DISEASES(PRO_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_ID on PROTOCOL_DISEASES(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
