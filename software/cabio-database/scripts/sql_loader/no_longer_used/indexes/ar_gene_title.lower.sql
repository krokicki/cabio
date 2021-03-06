/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_GENE_ITLE_GENECHIP_A_lwr on AR_GENE_TITLE(lower(GENECHIP_ARRAY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GENE_ITLE_GENE_TITLE_lwr on AR_GENE_TITLE(lower(GENE_TITLE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GENE_ITLE_PROBE_SET__lwr on AR_GENE_TITLE(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
