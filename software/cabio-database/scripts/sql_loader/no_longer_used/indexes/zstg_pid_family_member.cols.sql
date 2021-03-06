/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PIDMBER_MEMBER_ID on ZSTG_PID_FAMILY_MEMBER(MEMBER_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDMBER_FAMILY_ID on ZSTG_PID_FAMILY_MEMBER(FAMILY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
