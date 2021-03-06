/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AGENTGENT_EVS_ID on AGENT(EVS_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_NSC_NUMBER on AGENT(NSC_NUMBER) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_CMAP_AGENT on AGENT(CMAP_AGENT) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_AGENT_COMM on AGENT(AGENT_COMMENT) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_AGENT_SOUR on AGENT(AGENT_SOURCE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_AGENT_NAME on AGENT(AGENT_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_AGENT_TYPE on AGENT(AGENT_TYPE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_AGENT_ID on AGENT(AGENT_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_DRUGBANK_A on AGENT(DRUGBANK_ACCESSION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_TOXICITY on AGENT(TOXICITY) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_SMILES_COD on AGENT(SMILES_CODE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_PUBCHEM_SI on AGENT(PUBCHEM_SID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_PUBCHEM_CI on AGENT(PUBCHEM_CID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_PROTEIN_BI on AGENT(PROTEIN_BINDING) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_PHARMACOLO on AGENT(PHARMACOLOGY) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_MOLECULAR_ on AGENT(MOLECULAR_WEIGHT) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_MECHANISM_ on AGENT(MECHANISM_OF_ACTION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_IUPAC_NAME on AGENT(IUPAC_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_INDICATION on AGENT(INDICATION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_HALF_LIFE on AGENT(HALF_LIFE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_CHEMICAL_F on AGENT(CHEMICAL_FORMULA) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_CAS_NUMBER on AGENT(CAS_NUMBER) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_BIOTRANSFO on AGENT(BIOTRANSFORMATION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index AGENTGENT_ABSORPTION on AGENT(ABSORPTION) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
