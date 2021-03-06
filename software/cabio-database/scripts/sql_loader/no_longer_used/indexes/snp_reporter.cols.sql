/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index SNP_REPORTER_PHAST_CONS on SNP_REPORTER(PHAST_CONSERVATION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_REPORTER_SNP_ID on SNP_REPORTER(SNP_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_REPORTER_MICROARRAY on SNP_REPORTER(MICROARRAY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_REPORTER_NAME on SNP_REPORTER(NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index SNP_REPORTER_ID on SNP_REPORTER(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
