/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index GENE_PRON_TV_PROTEIN_ID on GENE_PROTEIN_TV(PROTEIN_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENE_PRON_TV_GENE_ID on GENE_PROTEIN_TV(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
