/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index GENERIC_RTER_CLUSTER_ID on GENERIC_REPORTER(CLUSTER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENERIC_RTER_GENE_ID on GENERIC_REPORTER(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENERIC_RTER_TYPE on GENERIC_REPORTER(TYPE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENERIC_RTER_NAME on GENERIC_REPORTER(NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENERIC_RTER_ID on GENERIC_REPORTER(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
