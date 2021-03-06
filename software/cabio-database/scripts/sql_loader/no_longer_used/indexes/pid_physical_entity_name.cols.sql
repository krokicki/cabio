/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index PID_PHYSNAME_ENTITY_NAM on PID_PHYSICAL_ENTITY_NAME(ENTITY_NAME_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PHYSNAME_PHYSICAL_E on PID_PHYSICAL_ENTITY_NAME(PHYSICAL_ENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
