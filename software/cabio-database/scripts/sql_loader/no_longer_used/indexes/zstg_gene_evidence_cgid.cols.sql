/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_GENCGID_EVIDENCECO on ZSTG_GENE_EVIDENCE_CGID(EVIDENCECODE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENCGID_EVIDENCE_I on ZSTG_GENE_EVIDENCE_CGID(EVIDENCE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GENCGID_GENE_ID on ZSTG_GENE_EVIDENCE_CGID(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
