/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table ARRAY_REPORTER_CH enable constraint ARREPBIGID;
alter table BIO_PATHWAYS_TV enable constraint BPTBIGID;
alter table CHROMOSOME enable constraint SYS_C0016534;
alter table CHROMOSOME enable constraint CHRBIGID;
alter table CLONE_TV enable constraint CTVBIGID;
alter table CYTOBAND enable constraint CYTOBIGID;
alter table CYTOGENIC_LOCATION_CYTOBAND enable constraint CCCBIGID;
alter table DISEASE_RELATIONSHIP enable constraint DRBIGID;
alter table EXON enable constraint XONBIGID;
alter table EXON_REPORTER enable constraint XONREPORTER;
alter table EXPRESSION_REPORTER enable constraint EXPRREPBIGID;
alter table GENERIC_ARRAY enable constraint GABIGID;
alter table GENERIC_REPORTER enable constraint GREP;
alter table GENE_ALIAS_OBJECT_TV enable constraint GAOBIGID;
alter table GENE_TV enable constraint GTVBIGID;
alter table GO_ONTOLOGY enable constraint GOOBIGID;
alter table GO_RELATIONSHIP enable constraint GORBIGID;
alter table HISTOLOGY_CODE enable constraint HCBIGID;
alter table HISTOPATHOLOGY_TST enable constraint HISTOBIGID;
alter table HOMOLOGOUS_ASSOCIATION enable constraint HABIGID;
alter table LIBRARY enable constraint LIBBIGID;
alter table MARKER enable constraint MARKERBIGID;
alter table MARKER_ALIAS enable constraint MABIGID;
alter table MICROARRAY enable constraint MABIGIDUNIQ;
alter table NEW_PROTEIN enable constraint NPBIGIDUNIQ;
alter table NUCLEIC_ACID_SEQUENCE enable constraint NASBIGID;
alter table ORGANONTOLOGYRELATIONSHIP enable constraint OORBIGID;
alter table POPULATION_FREQUENCY enable constraint PFBIGID;
alter table PROTEIN_ALIAS enable constraint PABIGID;
alter table PROTEIN_DOMAIN enable constraint PDBIGID;
alter table PROTEIN_SEQUENCE enable constraint PROTSEQ;
alter table PROTOCOL enable constraint PROBIGIDUN;
alter table RELATIVE_LOCATION enable constraint RCHBIGID;
alter table SNP_REPORTER enable constraint SNPREPBIGID;
alter table TARGET enable constraint TARGETBIGID;
alter table TARGET enable constraint SYS_C004768;
alter table TAXON enable constraint TAXBIGID;
alter table TAXON enable constraint SYS_C004778;
alter table TISSUE_CODE enable constraint TCBIGID;
alter table TISSUE_CODE enable constraint SYS_C004788;
alter table TISSUE_SAMPLE enable constraint TISSSAMP;
alter table TRANSCRIPT enable constraint XSCRIPTBIGID;
alter table TRANSCRIPT enable constraint SYS_C004802;
alter table TRANSCRIPT_ARRAY_REPORTER enable constraint XSCRIPTARRREP;
alter table TRANSCRIPT_ARRAY_REPORTER enable constraint SYS_C004808;
alter table VOCABULARY enable constraint BIGID;
alter table VOCABULARY enable constraint SYS_C004820;
alter table ZSTG_EXON_REPORTER enable constraint SYS_C004892;
alter table ZSTG_OLD_PROTOCOLS enable constraint SYS_C0020924;
alter table ZSTG_OLD_PROTOCOL_DISEASES enable constraint SYS_C0020928;
alter table ZSTG_AGENT_BK enable constraint SYS_C0026163;
alter table ZSTG_TARGET enable constraint SYS_C0021023;
alter table PID_ENTITY_ACCESSION enable constraint SYS_C0017726;
alter table ZSTG_TAXON enable constraint SYS_C0031758;

EXIT;
