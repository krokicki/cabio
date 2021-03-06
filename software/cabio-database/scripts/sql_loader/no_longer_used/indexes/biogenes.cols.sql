/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index BIOGENESENES_BIOGENES_I on BIOGENES(BIOGENES_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIOGENESENES_GENE_ID on BIOGENES(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIOGENESENES_LOCUS_ID on BIOGENES(LOCUS_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIOGENESENES_BC_ID on BIOGENES(BC_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index BIOGENESENES_ORGANISM on BIOGENES(ORGANISM) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
