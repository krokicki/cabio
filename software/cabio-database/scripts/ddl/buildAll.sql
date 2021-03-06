/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

@Tables/ACE.sql;
@Tables/AGENT.sql;
@Tables/ANIMALMODEL.sql;
@Tables/ANOMALY.sql;
@Tables/ARRAY_REPORTER.sql;
@Tables/ARRAY_REPORTER_CH.sql;
@Tables/AR_ALIGNMENTS.sql;
@Tables/AR_ALIGNMENTS_TMP.sql;
@Tables/AR_CHROMOSOMAL_LOCATION.sql;
@Tables/AR_CHROMOSOMAL_LOCATION_TMP.sql;
@Tables/AR_EC.sql;
@Tables/AR_EC_TMP.sql;
@Tables/AR_ENSEMBL.sql;
@Tables/AR_ENSEMBL_TMP.sql;
@Tables/AR_ENTREZ_GENE.sql;
@Tables/AR_ENTREZ_GENE_TMP.sql;
@Tables/AR_GENE_SYMBOL.sql;
@Tables/AR_GENE_SYMBOL_TMP.sql;
@Tables/AR_GENE_TITLE.sql;
@Tables/AR_GENE_TITLE_TMP.sql;
@Tables/AR_GO_BIOLOGICAL_PROCESS.sql;
@Tables/AR_GO_BIOLOGICAL_PROCESS_TMP.sql;
@Tables/AR_GO_CELLULAR_COMPONENT.sql;
@Tables/AR_GO_CELLULAR_COMPONENT_TMP.sql;
@Tables/AR_GO_MOLECULAR_FUNCTION.sql;
@Tables/AR_GO_MOLECULAR_FUNCTION_TMP.sql;
@Tables/AR_OMIM_ID.sql;
@Tables/AR_OMIM_ID_TMP.sql;
@Tables/AR_PATHWAY.sql;
@Tables/AR_PATHWAY_TMP.sql;
@Tables/AR_REFSEQ_PROTEIN.sql;
@Tables/AR_REFSEQ_PROTEIN_TMP.sql;
@Tables/AR_REFSEQ_TRANSCRIPTS.sql;
@Tables/AR_REFSEQ_TRANSCRIPTS_TMP.sql;
@Tables/AR_REPRESENTATIVE_PUBLIC_ID.sql;
@Tables/AR_REP_PUBLIC_ID_TMP.sql;
@Tables/AR_RNA_PROBESETS_AFFY.sql;
@Tables/AR_RNA_PROBESETS_AFFY_TMP.sql;
@Tables/AR_SWISSPROT.sql;
@Tables/AR_SWISSPROT_TMP.sql;
@Tables/AR_UNIGENE_ID.sql;
@Tables/AR_UNIGENE_ID_TMP.sql;
@Tables/BIOGENES.sql;
@Tables/BIO_PATHWAYS.sql;
@Tables/BIO_PATHWAYS_TV.sql;
@Tables/CGAP_GENE_ALIAS.sql;
@Tables/CGAP_TISSUE_SELECTION.sql;
@Tables/CHROMOSOME.sql;
@Tables/CLONE_DIFF.sql;
@Tables/CLONE_DIFF_MOUSE.sql;
@Tables/CLONE_RELATIVE_LOCATION.sql;
@Tables/CLONE_TAXON.sql;
@Tables/CLONE_TRACE.sql;
@Tables/CLONE_TV.sql;
@Tables/CONCEPT.sql;
@Tables/CONCEPT_CLOSURE.sql;
@Tables/CONCEPT_RELATIONSHIP.sql;
@Tables/CONCEPT_TARGET.sql;
@Tables/CONCEPT_TYPE.sql;
@Tables/CONTEXT.sql;
@Tables/CYTOBAND.sql;
@Tables/CYTOGENIC_LOCATION_CYTOBAND.sql;
@Tables/DAS_DATA_SOURCE_BUILD.sql;
@Tables/DATABASE_CROSS_REFERENCE.sql;
@Tables/DATA_SOURCE.sql;
@Tables/DISEASE.sql;
@Tables/DISEASE_RELATIONSHIP.sql;
@Tables/ENGINEEREDGENE.sql;
@Tables/EVIDENCE.sql;
@Tables/EVIDENCE_CODE.sql;
@Tables/EVIDENCE_EVIDENCE_CODE.sql;
@Tables/EXON.sql;
@Tables/EXON_REPORTER.sql;
@Tables/EXON_REPORTER_GENE.sql;
@Tables/EXPRESSION_REPORTER.sql;
@Tables/EXPR_REPORTER_PROTEIN_DOMAIN.sql;
@Tables/GENE.sql;
@Tables/GENERIC_ARRAY.sql;
@Tables/GENERIC_ARRAY_GENERIC_REPORTER.sql;
@Tables/GENERIC_ARRAY_SNP_REPORTER.sql;
@Tables/GENERIC_REPORTER.sql;
@Tables/GENE_ALIAS_OBJECT_TV.sql;
@Tables/GENE_EXPRESSED_IN.sql;
@Tables/GENE_FUNCTION_ASSOCIATION.sql;
@Tables/GENE_GENEALIAS.sql;
@Tables/GENE_HISTOPATHOLOGY.sql;
@Tables/GENE_MARKER.sql;
@Tables/GENE_NUCLEIC_ACID_SEQUENCE.sql;
@Tables/GENE_PATHWAY.sql;
@Tables/GENE_PROTEIN_TV.sql;
@Tables/GENE_RELATIVE_LOCATION.sql;
@Tables/GENE_TARGET.sql;
@Tables/GENE_TV.sql;
@Tables/GENOMICSEGMENT.sql;
@Tables/GO_CLOSURE.sql;
@Tables/GO_GENES.sql;
@Tables/GO_ONTOLOGY.sql;
@Tables/GO_RELATIONSHIP.sql;
@Tables/HANDLES.sql;
@Tables/HISTOLOGY_CLOSURE.sql;
@Tables/HISTOLOGY_CODE.sql;
@Tables/HISTOPATHOLOGY.sql;
@Tables/HISTOPATHOLOGY_DISEASE.sql;
@Tables/HISTOPATHOLOGY_TST.sql;
@Tables/HOMOLOGOUS_ASSOCIATION.sql;
@Tables/IMT_TO_CONTEXT.sql;
@Tables/IMT_TO_HISTOLOGY.sql;
@Tables/IMT_TO_TISSUE.sql;
@Tables/INTERNET_SOURCE.sql;
@Tables/KEYWORD.sql;
@Tables/LIBRARY.sql;
@Tables/LIBRARY_HISTOPATHOLOGY.sql;
@Tables/LIBRARY_KEYWORD.sql;
@Tables/LOCATION_CH.sql;
@Tables/LOCATION_TV.sql;
@Tables/MARKER.sql;
@Tables/MARKER_ALIAS.sql;
@Tables/MARKER_LOOKUP.sql;
@Tables/MARKER_MARKER_ALIAS.sql;
@Tables/MARKER_MARKER_REL_LOCATION.sql;
@Tables/MARKER_RELATIVE_LOCATION.sql;
@Tables/MICROARRAY.sql;
@Tables/NAS.sql;
@Tables/NEW_PROTEIN.sql;
@Tables/NOMENCLATURE.sql;
@Tables/NUCLEIC_ACID_SEQUENCE.sql;
@Tables/OBJECT_MAP.sql;
@Tables/OBJECT_TO_OBJECT_MAP.sql;
@Tables/OLD_PROTOCOL_AGENTS.sql;
@Tables/ONTOLOGY_RELATIONSHIP.sql;
@Tables/ORGAN.sql;
@Tables/ORGANONTOLOGYRELATIONSHIP.sql;
@Tables/PARTY_CONTACTINFO.sql;
@Tables/PHYSICAL_LOCATION.sql;
@Tables/PID_ENTITY_ACCESSION.sql;
@Tables/PID_ENTITY_AGENT.sql;
@Tables/PID_ENTITY_NAME.sql;
@Tables/PID_ENTITY_PROTEIN.sql;
@Tables/PID_ENTITY_SEQUENCE.sql;
@Tables/PID_FAMILY_PARTICIPANT.sql;
@Tables/PID_INTERACTION.sql;
@Tables/PID_INTERACTION_EC.sql;
@Tables/PID_INTERACTION_EVIDENCE.sql;
@Tables/PID_PARTICIPANT.sql;
@Tables/PID_PATHWAY_INTERACTION.sql;
@Tables/PID_PHYSICAL_ENTITY.sql;
@Tables/PID_PHYSICAL_ENTITY_ACCESSION.sql;
@Tables/PID_PHYSICAL_ENTITY_NAME.sql;
@Tables/PLAN_TABLE.sql;
@Tables/POPULATION_FREQUENCY.sql;
@Tables/POST_TRANSLATION_MODIFICATION.sql;
@Tables/PROTEIN_ALIAS.sql;
@Tables/PROTEIN_COMPLEX.sql;
@Tables/PROTEIN_COMPOUND.sql;
@Tables/PROTEIN_DOMAIN.sql;
@Tables/PROTEIN_KEYWORDS.sql;
@Tables/PROTEIN_PROTEIN_ALIAS.sql;
@Tables/PROTEIN_SECONDARY_ACCESSION.sql;
@Tables/PROTEIN_SEQUENCE.sql;
@Tables/PROTEIN_TAXON.sql;
@Tables/PROTOCOL.sql;
@Tables/PROTOCOLS.sql;
@Tables/PROTOCOL_AGENTS.sql;
@Tables/PROTOCOL_DISEASES.sql;
@Tables/PROVENANCE.sql;
@Tables/PUBLICATION.sql;
@Tables/PUBLICATIONSTATUS.sql;
@Tables/PUBLICATION_SOURCE.sql;
@Tables/QUEST_SL_TEMP_EXPLAIN1.sql;
@Tables/REGULATORYELEMENT.sql;
@Tables/RELATIVE_LOCATION.sql;
@Tables/RELATIVE_LOCATION_CH.sql;
@Tables/RESEARCH_INSTITUTION_SOURCE.sql;
@Tables/ROLE.sql;
@Tables/SAMPLE.sql;
@Tables/SEQUENCE_TYPE.sql;
@Tables/SNP2UNIQ.sql;
@Tables/SNPSEQ.sql;
@Tables/SNP_REPORTER.sql;
@Tables/SNP_TV.sql;
@Tables/SOURCE.sql;
@Tables/SOURCE_REFERENCE.sql;
@Tables/STG_KEYWORD.sql;
@Tables/STG_KEYWORD_AGG.sql;
@Tables/TARGET.sql;
@Tables/TARGET_AGENT.sql;
@Tables/TAXON.sql;
@Tables/TISSUE_CLOSURE.sql;
@Tables/TISSUE_CODE.sql;
@Tables/TISSUE_SAMPLE.sql;
@Tables/TRANSCRIPT.sql;
@Tables/TRANSCRIPT_ARRAY_REPORTER.sql;
@Tables/TRANSCRIPT_GENE.sql;
@Tables/URL_SOURCE_REFERENCE.sql;
@Tables/VOCABULARY.sql;
@Tables/WEB_SERV_SOURCE_REFERENCE.sql;
@Tables/ZSTG_AGENT.sql;
@Tables/ZSTG_AGENTS_NSC.sql;
@Tables/ZSTG_AGENT_BK.sql;
@Tables/ZSTG_AGENT_CGID.sql;
@Tables/ZSTG_ARRAY_REPORTER_CH.sql;
@Tables/ZSTG_BIOGENES.sql;
@Tables/ZSTG_BIOPATHWAY_DESCR.sql;
@Tables/ZSTG_BIO_PATHWAYS_TV.sql;
@Tables/ZSTG_CGH_ACCESSIONS.sql;
@Tables/ZSTG_CGH_AGILENT.sql;
@Tables/ZSTG_CLONE.sql;
@Tables/ZSTG_CLONE_DIM.sql;
@Tables/ZSTG_CMAP_AGENTS.sql;
@Tables/ZSTG_CMAP_GENES.sql;
@Tables/ZSTG_CMAP_IDS.sql;
@Tables/ZSTG_CMAP_NAMES.sql;
@Tables/ZSTG_CMAP_TARGETAGENTS.sql;
@Tables/ZSTG_CMAP_TARGETS.sql;
@Tables/ZSTG_DISEASEONTOLOGY_CGID.sql;
@Tables/ZSTG_ENDCYTOIDS.sql;
@Tables/ZSTG_ENDEXPRARRAYREPCYTOIDS.sql;
@Tables/ZSTG_ENDSNPARRAYREPCYTOIDS.sql;
@Tables/ZSTG_EVS_CONCEPT_RELATIONSHIP.sql;
@Tables/ZSTG_EXON_AFFY.sql;
@Tables/ZSTG_EXON_REPORTER.sql;
@Tables/ZSTG_EXON_TRANS_AFFY.sql;
@Tables/ZSTG_EXON_TRANS_GENES.sql;
@Tables/ZSTG_EXPRESSION_REPORTER.sql;
@Tables/ZSTG_GENE.sql;
@Tables/ZSTG_GENE2ACCESSION.sql;
@Tables/ZSTG_GENE2REFSEQ.sql;
@Tables/ZSTG_GENE2UNIGENE.sql;
@Tables/ZSTG_GENEALIAS.sql;
@Tables/ZSTG_GENETIC_MAP.sql;
@Tables/ZSTG_GENE_AGENT_CGID.sql;
@Tables/ZSTG_GENE_AGENT_EVIDENCE_CGID.sql;
@Tables/ZSTG_GENE_DISEASEONTO_CGID.sql;
@Tables/ZSTG_GENE_DISEASE_EVID_CGID.sql;
@Tables/ZSTG_GENE_EVIDENCE_CGID.sql;
@Tables/ZSTG_GENE_EXPRESSED_IN.sql;
@Tables/ZSTG_GENE_GENEALIAS_CGID.sql;
@Tables/ZSTG_GENE_HOMOLOGUE_REFERENCE.sql;
@Tables/ZSTG_GENE_IDENTIFIERS.sql;
@Tables/ZSTG_GENE_MARKERS.sql;
@Tables/ZSTG_GENE_ONTOLOGY.sql;
@Tables/ZSTG_GENE_ROLE_CGID.sql;
@Tables/ZSTG_HISTOLOGY_CODE.sql;
@Tables/ZSTG_HSMM_SEQ.sql;
@Tables/ZSTG_HUMAN_CYTOBAND.sql;
@Tables/ZSTG_HUMAN_EST.sql;
@Tables/ZSTG_HUMAN_MRNA.sql;
@Tables/ZSTG_IMAGE_CLONE.sql;
@Tables/ZSTG_INTERACTIONCOMPONENTLABEL.sql;
@Tables/ZSTG_INTERACTIONCOMPPTMTERMS.sql;
@Tables/ZSTG_INTERACTIONCONDITION.sql;
@Tables/ZSTG_INTERACTIONEVIDENCE.sql;
@Tables/ZSTG_INTERACTIONREFERENCE.sql;
@Tables/ZSTG_INTERACTIONS.sql;
@Tables/ZSTG_INTERPRO.sql;
@Tables/ZSTG_INTERPRO_TMP.sql;
@Tables/ZSTG_MAP.sql;
@Tables/ZSTG_MARKER.sql;
@Tables/ZSTG_MARKER_ALIAS.sql;
@Tables/ZSTG_MERGED_SNP_RSIDS_MAPPING.sql;
@Tables/ZSTG_MICROSATELLITE.sql;
@Tables/ZSTG_MISSING_AGENT_CGID.sql;
@Tables/ZSTG_MISSING_AGENT_CGID_EVS.sql;
@Tables/ZSTG_MISSING_DISEASEONTOL_CGID.sql;
@Tables/ZSTG_MOLECULECOMPONENTLABELS.sql;
@Tables/ZSTG_MOLECULECOMPPTMTERMS.sql;
@Tables/ZSTG_MOLECULEFAMILIES.sql;
@Tables/ZSTG_MOLECULENAMES.sql;
@Tables/ZSTG_MOLECULEPARTS.sql;
@Tables/ZSTG_MOUSE_CYTOBAND.sql;
@Tables/ZSTG_MOUSE_EST.sql;
@Tables/ZSTG_MOUSE_MRNA.sql;
@Tables/ZSTG_OLD_PROTOCOLS.sql;
@Tables/ZSTG_OLD_PROTOCOL_DISEASES.sql;
@Tables/ZSTG_OMIM2GENE.sql;
@Tables/ZSTG_PATHWAYCOMPONENTS.sql;
@Tables/ZSTG_PATHWAYCURATORS.sql;
@Tables/ZSTG_PATHWAYREVIEWERS.sql;
@Tables/ZSTG_PATHWAYS.sql;
@Tables/ZSTG_PID_COMPLEX_COMPONENT.sql;
@Tables/ZSTG_PID_COMPL_PARTICIPANT_LOC.sql;
@Tables/ZSTG_PID_COMP_PARTCIPANT_ACTST.sql;
@Tables/ZSTG_PID_COMP_PARTCIPANT_PTM.sql;
@Tables/ZSTG_PID_DUMP.sql;
@Tables/ZSTG_PID_ENTITYACCESSION.sql;
@Tables/ZSTG_PID_ENTITYNAME.sql;
@Tables/ZSTG_PID_EVIDENCECODE.sql;
@Tables/ZSTG_PID_FAMILY_MEMBER.sql;
@Tables/ZSTG_PID_FMLY_PRTPNT_ACTST.sql;
@Tables/ZSTG_PID_FMLY_PRTPNT_PTM.sql;
@Tables/ZSTG_PID_GENEENTITY.sql;
@Tables/ZSTG_PID_INTERACTANTS.sql;
@Tables/ZSTG_PID_INTERACTION.sql;
@Tables/ZSTG_PID_INTERACTIONCONDITION.sql;
@Tables/ZSTG_PID_INTERACTIONEVIDENCE.sql;
@Tables/ZSTG_PID_INTERACTIONREFERENCE.sql;
@Tables/ZSTG_PID_INTR_PARTCPANT_ACTST.sql;
@Tables/ZSTG_PID_INTR_PARTCPANT_PTM.sql;
@Tables/ZSTG_PID_INTR_PARTPANT_LOC.sql;
@Tables/ZSTG_PID_MACROPROCESS_TYPE.sql;
@Tables/ZSTG_PID_PATHWAY.sql;
@Tables/ZSTG_PID_PATHWAYREFERENCE.sql;
@Tables/ZSTG_PID_PATHWAY_INTERACTION.sql;
@Tables/ZSTG_PID_PHYSICALENTITY.sql;
@Tables/ZSTG_PID_PROTEINSUBUNIT.sql;
@Tables/ZSTG_POPULATION_FREQUENCY.sql;
@Tables/ZSTG_POP_FREQUENCY.sql;
@Tables/ZSTG_PROTEIN_EMBL.sql;
@Tables/ZSTG_RNA_AGILENT.sql;
@Tables/ZSTG_RNA_PROBESETS.sql;
@Tables/ZSTG_RNA_PROBESETS_TEXT.sql;
@Tables/ZSTG_RNA_PROBESETS_TMP.sql;
@Tables/ZSTG_ROLECODE_CGID.sql;
@Tables/ZSTG_SEQGENE.sql;
@Tables/ZSTG_SEQSTS.sql;
@Tables/ZSTG_SNPCYTOIDS.sql;
@Tables/ZSTG_SNPREP_SNTV_IDS_MPNG.sql;
@Tables/ZSTG_SNP_AFFY.sql;
@Tables/ZSTG_SNP_ASSOCIATED_GENE.sql;
@Tables/ZSTG_SNP_ILLUMINA.sql;
@Tables/ZSTG_SNP_REPORTER.sql;
@Tables/ZSTG_SNP_TSC.sql;
@Tables/ZSTG_STARTCYTOIDS.sql;
@Tables/ZSTG_STARTEXPRARRAYREPCYTOIDS.sql;
@Tables/ZSTG_STARTSNPARRAYREPCYTOIDS.sql;
@Tables/ZSTG_TARGET.sql;
@Tables/ZSTG_TARGET_AGENT.sql;
@Triggers/CGDC_ID_INSERT.sql;
@Triggers/CYTOGENIC_LOC_CYTOID.sql;
@Triggers/EVIDENCE_CODE_ID_TRIGGER.sql;
@Triggers/EVIDENCE_ID_TRIGGER.sql;
@Triggers/GENE_ALIAS_ID_LOAD.sql;
@Triggers/HOMOLO_ID.sql;
@Triggers/INTERACTION_ID_TRIGGER.sql;
@Triggers/PARTICIPANT_ID_TRIGGER.sql;
@Triggers/PATHWAY_ID.sql;
@Triggers/PATHWAY_ID_TRIGGER.sql;
@Triggers/PROTEIN_COMPLEX_ID_TRIGGER.sql;
@Triggers/PROTEIN_COMPOUND_ID_TRIGGER.sql;
@Triggers/SET_CYTOBAND_ID.sql;
@Triggers/SET_CYTO_PHYLOC_ID.sql;
@Triggers/SET_DBCROSSREF_ID.sql;
@Triggers/SET_EXON_ID.sql;
@Triggers/SET_EXON_REP_ID.sql;
@Triggers/SET_EXPR_REP_ID.sql;
@Triggers/SET_GENERICREP_ID.sql;
@Triggers/SET_GENE_REL_LOC_ID.sql;
@Triggers/SET_MARKER_REL_LOC_ID.sql;
@Triggers/SET_PHYLOC_ID.sql;
@Triggers/SET_PROTEIN_SEQ_ID.sql;
@Triggers/SET_SNP_REP_ID.sql;
@Triggers/SET_TARGET_ID.sql;
@Triggers/SET_XSCRIPT_ID.sql;
@Triggers/TEST_TRIG.sql;
@Synonym/ACE.sql;
@Synonym/AGENT.sql;
@Synonym/ANIMALMODEL.sql;
@Synonym/ANOMALY.sql;
@Synonym/ARRAY_REPORTER.sql;
@Synonym/ARRAY_REPORTER_CH.sql;
@Synonym/AR_ALIGNMENTS.sql;
@Synonym/AR_ALIGNMENTS_TMP.sql;
@Synonym/AR_CHROMOSOMAL_LOCATION.sql;
@Synonym/AR_CHROMOSOMAL_LOCATION_TMP.sql;
@Synonym/AR_EC.sql;
@Synonym/AR_EC_TMP.sql;
@Synonym/AR_ENSEMBL.sql;
@Synonym/AR_ENSEMBL_TMP.sql;
@Synonym/AR_ENTREZ_GENE.sql;
@Synonym/AR_ENTREZ_GENE_TMP.sql;
@Synonym/AR_GENE_SYMBOL.sql;
@Synonym/AR_GENE_SYMBOL_TMP.sql;
@Synonym/AR_GENE_TITLE.sql;
@Synonym/AR_GENE_TITLE_TMP.sql;
@Synonym/AR_GO_BIOLOGICAL_PROCESS.sql;
@Synonym/AR_GO_BIOLOGICAL_PROCESS_TMP.sql;
@Synonym/AR_GO_CELLULAR_COMPONENT.sql;
@Synonym/AR_GO_CELLULAR_COMPONENT_TMP.sql;
@Synonym/AR_GO_MOLECULAR_FUNCTION.sql;
@Synonym/AR_GO_MOLECULAR_FUNCTION_TMP.sql;
@Synonym/AR_OMIM_ID.sql;
@Synonym/AR_OMIM_ID_TMP.sql;
@Synonym/AR_PATHWAY.sql;
@Synonym/AR_PATHWAY_TMP.sql;
@Synonym/AR_REFSEQ_PROTEIN.sql;
@Synonym/AR_REFSEQ_PROTEIN_TMP.sql;
@Synonym/AR_REFSEQ_TRANSCRIPTS.sql;
@Synonym/AR_REFSEQ_TRANSCRIPTS_TMP.sql;
@Synonym/AR_REPRESENTATIVE_PUBLIC_ID.sql;
@Synonym/AR_REP_PUBLIC_ID_TMP.sql;
@Synonym/AR_RNA_PROBESETS_AFFY.sql;
@Synonym/AR_RNA_PROBESETS_AFFY_TMP.sql;
@Synonym/AR_SWISSPROT.sql;
@Synonym/AR_SWISSPROT_TMP.sql;
@Synonym/AR_UNIGENE_ID.sql;
@Synonym/AR_UNIGENE_ID_TMP.sql;
@Synonym/BIOGENES.sql;
@Synonym/BIO_PATHWAYS.sql;
@Synonym/BIO_PATHWAYS_TV.sql;
@Synonym/CGAP_GENE_ALIAS.sql;
@Synonym/CGAP_TISSUE_SELECTION.sql;
@Synonym/CHROMOSOME.sql;
@Synonym/CLONE_DIFF.sql;
@Synonym/CLONE_DIFF_MOUSE.sql;
@Synonym/CLONE_RELATIVE_LOCATION.sql;
@Synonym/CLONE_TAXON.sql;
@Synonym/CLONE_TRACE.sql;
@Synonym/CLONE_TV.sql;
@Synonym/CONCEPT.sql;
@Synonym/CONCEPT_CLOSURE.sql;
@Synonym/CONCEPT_RELATIONSHIP.sql;
@Synonym/CONCEPT_TARGET.sql;
@Synonym/CONCEPT_TYPE.sql;
@Synonym/CONTEXT.sql;
@Synonym/CYTOBAND.sql;
@Synonym/CYTOGENIC_LOCATION_CYTOBAND.sql;
@Synonym/DAS_DATA_SOURCE_BUILD.sql;
@Synonym/DATABASE_CROSS_REFERENCE.sql;
@Synonym/DATA_SOURCE.sql;
@Synonym/DISEASE.sql;
@Synonym/DISEASE_RELATIONSHIP.sql;
@Synonym/ENGINEEREDGENE.sql;
@Synonym/EVIDENCE.sql;
@Synonym/EVIDENCE_CODE.sql;
@Synonym/EVIDENCE_EVIDENCE_CODE.sql;
@Synonym/EXON.sql;
@Synonym/EXON_REPORTER.sql;
@Synonym/EXON_REPORTER_GENE.sql;
@Synonym/EXPRESSION_REPORTER.sql;
@Synonym/EXPR_REPORTER_PROTEIN_DOMAIN.sql;
@Synonym/GENE.sql;
@Synonym/GENERIC_ARRAY.sql;
@Synonym/GENERIC_ARRAY_GENERIC_REPORTER.sql;
@Synonym/GENERIC_ARRAY_SNP_REPORTER.sql;
@Synonym/GENERIC_REPORTER.sql;
@Synonym/GENE_ALIAS_OBJECT_TV.sql;
@Synonym/GENE_EXPRESSED_IN.sql;
@Synonym/GENE_FUNCTION_ASSOCIATION.sql;
@Synonym/GENE_GENEALIAS.sql;
@Synonym/GENE_HISTOPATHOLOGY.sql;
@Synonym/GENE_MARKER.sql;
@Synonym/GENE_NUCLEIC_ACID_SEQUENCE.sql;
@Synonym/GENE_PATHWAY.sql;
@Synonym/GENE_PROTEIN_TV.sql;
@Synonym/GENE_RELATIVE_LOCATION.sql;
@Synonym/GENE_TARGET.sql;
@Synonym/GENE_TV.sql;
@Synonym/GENOMICSEGMENT.sql;
@Synonym/GO_CLOSURE.sql;
@Synonym/GO_GENES.sql;
@Synonym/GO_ONTOLOGY.sql;
@Synonym/GO_RELATIONSHIP.sql;
@Synonym/HANDLES.sql;
@Synonym/HISTOLOGY_CLOSURE.sql;
@Synonym/HISTOLOGY_CODE.sql;
@Synonym/HISTOPATHOLOGY.sql;
@Synonym/HISTOPATHOLOGY_DISEASE.sql;
@Synonym/HISTOPATHOLOGY_TST.sql;
@Synonym/HOMOLOGOUS_ASSOCIATION.sql;
@Synonym/IMT_TO_CONTEXT.sql;
@Synonym/IMT_TO_HISTOLOGY.sql;
@Synonym/IMT_TO_TISSUE.sql;
@Synonym/INTERNET_SOURCE.sql;
@Synonym/KEYWORD.sql;
@Synonym/LIBRARY.sql;
@Synonym/LIBRARY_HISTOPATHOLOGY.sql;
@Synonym/LIBRARY_KEYWORD.sql;
@Synonym/LOCATION_CH.sql;
@Synonym/LOCATION_TV.sql;
@Synonym/MARKER.sql;
@Synonym/MARKER_ALIAS.sql;
@Synonym/MARKER_LOOKUP.sql;
@Synonym/MARKER_MARKER_ALIAS.sql;
@Synonym/MARKER_MARKER_REL_LOCATION.sql;
@Synonym/MARKER_RELATIVE_LOCATION.sql;
@Synonym/MICROARRAY.sql;
@Synonym/NAS.sql;
@Synonym/NEW_PROTEIN.sql;
@Synonym/NOMENCLATURE.sql;
@Synonym/NUCLEIC_ACID_SEQUENCE.sql;
@Synonym/OBJECT_MAP.sql;
@Synonym/OBJECT_TO_OBJECT_MAP.sql;
@Synonym/OLD_PROTOCOL_AGENTS.sql;
@Synonym/ONTOLOGY_RELATIONSHIP.sql;
@Synonym/ORGAN.sql;
@Synonym/ORGANONTOLOGYRELATIONSHIP.sql;
@Synonym/PARTY_CONTACTINFO.sql;
@Synonym/PHYSICAL_LOCATION.sql;
@Synonym/PID_ENTITY_ACCESSION.sql;
@Synonym/PID_ENTITY_AGENT.sql;
@Synonym/PID_ENTITY_NAME.sql;
@Synonym/PID_ENTITY_PROTEIN.sql;
@Synonym/PID_ENTITY_SEQUENCE.sql;
@Synonym/PID_FAMILY_PARTICIPANT.sql;
@Synonym/PID_INTERACTION.sql;
@Synonym/PID_INTERACTION_EC.sql;
@Synonym/PID_INTERACTION_EVIDENCE.sql;
@Synonym/PID_PARTICIPANT.sql;
@Synonym/PID_PATHWAY_INTERACTION.sql;
@Synonym/PID_PHYSICAL_ENTITY.sql;
@Synonym/PID_PHYSICAL_ENTITY_ACCESSION.sql;
@Synonym/PID_PHYSICAL_ENTITY_NAME.sql;
@Synonym/POPULATION_FREQUENCY.sql;
@Synonym/POST_TRANSLATION_MODIFICATION.sql;
@Synonym/PROTEIN_ALIAS.sql;
@Synonym/PROTEIN_COMPLEX.sql;
@Synonym/PROTEIN_COMPOUND.sql;
@Synonym/PROTEIN_DOMAIN.sql;
@Synonym/PROTEIN_KEYWORDS.sql;
@Synonym/PROTEIN_PROTEIN_ALIAS.sql;
@Synonym/PROTEIN_SECONDARY_ACCESSION.sql;
@Synonym/PROTEIN_SEQUENCE.sql;
@Synonym/PROTEIN_TAXON.sql;
@Synonym/PROTOCOL.sql;
@Synonym/PROTOCOLS.sql;
@Synonym/PROTOCOL_AGENTS.sql;
@Synonym/PROTOCOL_DISEASES.sql;
@Synonym/PROVENANCE.sql;
@Synonym/PUBLICATION.sql;
@Synonym/PUBLICATIONSTATUS.sql;
@Synonym/PUBLICATION_SOURCE.sql;
@Synonym/QUEST_SL_TEMP_EXPLAIN1.sql;
@Synonym/REGULATORYELEMENT.sql;
@Synonym/RELATIVE_LOCATION.sql;
@Synonym/RELATIVE_LOCATION_CH.sql;
@Synonym/RESEARCH_INSTITUTION_SOURCE.sql;
@Synonym/ROLE.sql;
@Synonym/SAMPLE.sql;
@Synonym/SEQUENCE_TYPE.sql;
@Synonym/SNP2UNIQ.sql;
@Synonym/SNPSEQ.sql;
@Synonym/SNP_REPORTER.sql;
@Synonym/SNP_TV.sql;
@Synonym/SOURCE.sql;
@Synonym/SOURCE_REFERENCE.sql;
@Synonym/STG_KEYWORD.sql;
@Synonym/STG_KEYWORD_AGG.sql;
@Synonym/TARGET.sql;
@Synonym/TARGET_AGENT.sql;
@Synonym/TAXON.sql;
@Synonym/TISSUE_CLOSURE.sql;
@Synonym/TISSUE_CODE.sql;
@Synonym/TISSUE_SAMPLE.sql;
@Synonym/TRANSCRIPT.sql;
@Synonym/TRANSCRIPT_ARRAY_REPORTER.sql;
@Synonym/TRANSCRIPT_GENE.sql;
@Synonym/URL_SOURCE_REFERENCE.sql;
@Synonym/VOCABULARY.sql;
@Synonym/WEB_SERV_SOURCE_REFERENCE.sql;
@Synonym/ZSTG_AGENT.sql;
@Synonym/ZSTG_AGENTS_NSC.sql;
@Synonym/ZSTG_AGENT_BK.sql;
@Synonym/ZSTG_AGENT_CGID.sql;
@Synonym/ZSTG_ARRAY_REPORTER_CH.sql;
@Synonym/ZSTG_BIOGENES.sql;
@Synonym/ZSTG_BIOPATHWAY_DESCR.sql;
@Synonym/ZSTG_BIO_PATHWAYS_TV.sql;
@Synonym/ZSTG_CGH_ACCESSIONS.sql;
@Synonym/ZSTG_CGH_AGILENT.sql;
@Synonym/ZSTG_CLONE.sql;
@Synonym/ZSTG_CLONE_DIM.sql;
@Synonym/ZSTG_CMAP_AGENTS.sql;
@Synonym/ZSTG_CMAP_GENES.sql;
@Synonym/ZSTG_CMAP_IDS.sql;
@Synonym/ZSTG_CMAP_NAMES.sql;
@Synonym/ZSTG_CMAP_TARGETAGENTS.sql;
@Synonym/ZSTG_CMAP_TARGETS.sql;
@Synonym/ZSTG_DISEASEONTOLOGY_CGID.sql;
@Synonym/ZSTG_ENDCYTOIDS.sql;
@Synonym/ZSTG_ENDEXPRARRAYREPCYTOIDS.sql;
@Synonym/ZSTG_ENDSNPARRAYREPCYTOIDS.sql;
@Synonym/ZSTG_EVS_CONCEPT_RELATIONSHIP.sql;
@Synonym/ZSTG_EXON_AFFY.sql;
@Synonym/ZSTG_EXON_REPORTER.sql;
@Synonym/ZSTG_EXON_TRANS_AFFY.sql;
@Synonym/ZSTG_EXON_TRANS_GENES.sql;
@Synonym/ZSTG_EXPRESSION_REPORTER.sql;
@Synonym/ZSTG_GENE.sql;
@Synonym/ZSTG_GENE2ACCESSION.sql;
@Synonym/ZSTG_GENE2REFSEQ.sql;
@Synonym/ZSTG_GENE2UNIGENE.sql;
@Synonym/ZSTG_GENEALIAS.sql;
@Synonym/ZSTG_GENETIC_MAP.sql;
@Synonym/ZSTG_GENE_AGENT_CGID.sql;
@Synonym/ZSTG_GENE_AGENT_EVIDENCE_CGID.sql;
@Synonym/ZSTG_GENE_DISEASEONTO_CGID.sql;
@Synonym/ZSTG_GENE_DISEASE_EVID_CGID.sql;
@Synonym/ZSTG_GENE_EVIDENCE_CGID.sql;
@Synonym/ZSTG_GENE_EXPRESSED_IN.sql;
@Synonym/ZSTG_GENE_GENEALIAS_CGID.sql;
@Synonym/ZSTG_GENE_HOMOLOGUE_REFERENCE.sql;
@Synonym/ZSTG_GENE_IDENTIFIERS.sql;
@Synonym/ZSTG_GENE_MARKERS.sql;
@Synonym/ZSTG_GENE_ONTOLOGY.sql;
@Synonym/ZSTG_GENE_ROLE_CGID.sql;
@Synonym/ZSTG_HISTOLOGY_CODE.sql;
@Synonym/ZSTG_HSMM_SEQ.sql;
@Synonym/ZSTG_HUMAN_CYTOBAND.sql;
@Synonym/ZSTG_HUMAN_EST.sql;
@Synonym/ZSTG_HUMAN_MRNA.sql;
@Synonym/ZSTG_IMAGE_CLONE.sql;
@Synonym/ZSTG_INTERACTIONCOMPONENTLABEL.sql;
@Synonym/ZSTG_INTERACTIONCOMPPTMTERMS.sql;
@Synonym/ZSTG_INTERACTIONCONDITION.sql;
@Synonym/ZSTG_INTERACTIONEVIDENCE.sql;
@Synonym/ZSTG_INTERACTIONREFERENCE.sql;
@Synonym/ZSTG_INTERACTIONS.sql;
@Synonym/ZSTG_INTERPRO.sql;
@Synonym/ZSTG_INTERPRO_TMP.sql;
@Synonym/ZSTG_MAP.sql;
@Synonym/ZSTG_MARKER.sql;
@Synonym/ZSTG_MARKER_ALIAS.sql;
@Synonym/ZSTG_MERGED_SNP_RSIDS_MAPPING.sql;
@Synonym/ZSTG_MICROSATELLITE.sql;
@Synonym/ZSTG_MISSING_AGENT_CGID.sql;
@Synonym/ZSTG_MISSING_AGENT_CGID_EVS.sql;
@Synonym/ZSTG_MISSING_DISEASEONTOL_CGID.sql;
@Synonym/ZSTG_MOLECULECOMPONENTLABELS.sql;
@Synonym/ZSTG_MOLECULECOMPPTMTERMS.sql;
@Synonym/ZSTG_MOLECULEFAMILIES.sql;
@Synonym/ZSTG_MOLECULENAMES.sql;
@Synonym/ZSTG_MOLECULEPARTS.sql;
@Synonym/ZSTG_MOUSE_CYTOBAND.sql;
@Synonym/ZSTG_MOUSE_EST.sql;
@Synonym/ZSTG_MOUSE_MRNA.sql;
@Synonym/ZSTG_OLD_PROTOCOLS.sql;
@Synonym/ZSTG_OLD_PROTOCOL_DISEASES.sql;
@Synonym/ZSTG_OMIM2GENE.sql;
@Synonym/ZSTG_PATHWAYCOMPONENTS.sql;
@Synonym/ZSTG_PATHWAYCURATORS.sql;
@Synonym/ZSTG_PATHWAYREVIEWERS.sql;
@Synonym/ZSTG_PATHWAYS.sql;
@Synonym/ZSTG_PID_COMPLEX_COMPONENT.sql;
@Synonym/ZSTG_PID_COMPL_PARTICIPANT_LOC.sql;
@Synonym/ZSTG_PID_COMP_PARTCIPANT_ACTST.sql;
@Synonym/ZSTG_PID_COMP_PARTCIPANT_PTM.sql;
@Synonym/ZSTG_PID_DUMP.sql;
@Synonym/ZSTG_PID_ENTITYACCESSION.sql;
@Synonym/ZSTG_PID_ENTITYNAME.sql;
@Synonym/ZSTG_PID_EVIDENCECODE.sql;
@Synonym/ZSTG_PID_FAMILY_MEMBER.sql;
@Synonym/ZSTG_PID_FMLY_PRTPNT_ACTST.sql;
@Synonym/ZSTG_PID_FMLY_PRTPNT_PTM.sql;
@Synonym/ZSTG_PID_GENEENTITY.sql;
@Synonym/ZSTG_PID_INTERACTANTS.sql;
@Synonym/ZSTG_PID_INTERACTION.sql;
@Synonym/ZSTG_PID_INTERACTIONCONDITION.sql;
@Synonym/ZSTG_PID_INTERACTIONEVIDENCE.sql;
@Synonym/ZSTG_PID_INTERACTIONREFERENCE.sql;
@Synonym/ZSTG_PID_INTR_PARTCPANT_ACTST.sql;
@Synonym/ZSTG_PID_INTR_PARTCPANT_PTM.sql;
@Synonym/ZSTG_PID_INTR_PARTPANT_LOC.sql;
@Synonym/ZSTG_PID_MACROPROCESS_TYPE.sql;
@Synonym/ZSTG_PID_PATHWAY.sql;
@Synonym/ZSTG_PID_PATHWAYREFERENCE.sql;
@Synonym/ZSTG_PID_PATHWAY_INTERACTION.sql;
@Synonym/ZSTG_PID_PHYSICALENTITY.sql;
@Synonym/ZSTG_PID_PROTEINSUBUNIT.sql;
@Synonym/ZSTG_POPULATION_FREQUENCY.sql;
@Synonym/ZSTG_POP_FREQUENCY.sql;
@Synonym/ZSTG_PROTEIN_EMBL.sql;
@Synonym/ZSTG_RNA_AGILENT.sql;
@Synonym/ZSTG_RNA_PROBESETS.sql;
@Synonym/ZSTG_RNA_PROBESETS_TEXT.sql;
@Synonym/ZSTG_RNA_PROBESETS_TMP.sql;
@Synonym/ZSTG_ROLECODE_CGID.sql;
@Synonym/ZSTG_SEQGENE.sql;
@Synonym/ZSTG_SEQSTS.sql;
@Synonym/ZSTG_SNPREP_SNTV_IDS_MPNG.sql;
@Synonym/ZSTG_SNP_AFFY.sql;
@Synonym/ZSTG_SNP_ASSOCIATED_GENE.sql;
@Synonym/ZSTG_SNP_ILLUMINA.sql;
@Synonym/ZSTG_SNP_REPORTER.sql;
@Synonym/ZSTG_SNP_TSC.sql;
@Synonym/ZSTG_STARTCYTOIDS.sql;
@Synonym/ZSTG_STARTEXPRARRAYREPCYTOIDS.sql;
@Synonym/ZSTG_STARTSNPARRAYREPCYTOIDS.sql;
@Synonym/ZSTG_TARGET.sql;
@Synonym/ZSTG_TARGET_AGENT.sql;
