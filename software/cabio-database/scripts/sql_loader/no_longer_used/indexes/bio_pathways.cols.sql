/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index BIO_PATHWAYS_PATHWAY_DI on BIO_PATHWAYS(PATHWAY_DIAGRAM) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHWAYS_TAXON on BIO_PATHWAYS(TAXON) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHWAYS_PATHWAY_DI on BIO_PATHWAYS(PATHWAY_DISPLAY) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHWAYS_PATHWAY_NA on BIO_PATHWAYS(PATHWAY_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIO_PATHWAYS_PATHWAY_ID on BIO_PATHWAYS(PATHWAY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
