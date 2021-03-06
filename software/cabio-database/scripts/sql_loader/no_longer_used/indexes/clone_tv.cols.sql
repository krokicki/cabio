/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index CLONE_TVE_TV_TYPE on CLONE_TV(TYPE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CLONE_TVE_TV_LIBRARY_ID on CLONE_TV(LIBRARY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CLONE_TVE_TV_INSERT_SIZ on CLONE_TV(INSERT_SIZE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CLONE_TVE_TV_CLONE_NAME on CLONE_TV(CLONE_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index CLONE_TVE_TV_CLONE_ID on CLONE_TV(CLONE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
