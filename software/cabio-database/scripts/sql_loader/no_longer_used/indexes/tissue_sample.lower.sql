/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index TISSUE_SMPLE_TISSUE_NAM_lwr on TISSUE_SAMPLE(lower(TISSUE_NAME)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_ORGAN_lwr on TISSUE_SAMPLE(lower(ORGAN)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_SEX_lwr on TISSUE_SAMPLE(lower(SEX)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_SUPPLIER_lwr on TISSUE_SAMPLE(lower(SUPPLIER)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_HISTOLOGY_lwr on TISSUE_SAMPLE(lower(HISTOLOGY)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_DESCRIPTIO_lwr on TISSUE_SAMPLE(lower(DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_TISSUE_TYP_lwr on TISSUE_SAMPLE(lower(TISSUE_TYPE)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_CELL_TYPE_lwr on TISSUE_SAMPLE(lower(CELL_TYPE)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_CELL_LINE_lwr on TISSUE_SAMPLE(lower(CELL_LINE)) PARALLEL NOLOGGING tablespace CABIO;
create index TISSUE_SMPLE_DEVELOPMEN_lwr on TISSUE_SAMPLE(lower(DEVELOPMENT_STAGE)) PARALLEL NOLOGGING tablespace CABIO;

--EXIT;
