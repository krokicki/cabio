/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index PID_PHYSSION_ENTITY_ACC on PID_PHYSICAL_ENTITY_ACCESSION(ENTITY_ACCESSION_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PHYSSION_PHYSICAL_E on PID_PHYSICAL_ENTITY_ACCESSION(PHYSICAL_ENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
