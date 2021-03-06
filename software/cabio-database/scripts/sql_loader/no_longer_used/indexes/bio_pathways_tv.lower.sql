/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index BIO_PATHS_TV_SOURCE_lwr on BIO_PATHWAYS_TV(lower(SOURCE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHS_TV_REVIEWER_lwr on BIO_PATHWAYS_TV(lower(REVIEWER)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHS_TV_CURATOR_lwr on BIO_PATHWAYS_TV(lower(CURATOR)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHS_TV_LONG_NAME_lwr on BIO_PATHWAYS_TV(lower(LONG_NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHS_TV_PATHWAY_DI_lwr on BIO_PATHWAYS_TV(lower(PATHWAY_DIAGRAM_NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHS_TV_PATHWAY_DI_lwr on BIO_PATHWAYS_TV(lower(PATHWAY_DISPLAY)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHS_TV_PATHWAY_NA_lwr on BIO_PATHWAYS_TV(lower(PATHWAY_NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
