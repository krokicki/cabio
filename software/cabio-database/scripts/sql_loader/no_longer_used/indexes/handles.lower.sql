/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index HANDLES_REFS_lwr on HANDLES(lower(REFS)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HANDLES_ADMIN_READ_lwr on HANDLES(lower(ADMIN_READ)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HANDLES_ADMIN_WRITE_lwr on HANDLES(lower(ADMIN_WRITE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HANDLES_PUB_READ_lwr on HANDLES(lower(PUB_READ)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index HANDLES_PUB_WRITE_lwr on HANDLES(lower(PUB_WRITE)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
