/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AGENT_CGID_ID on AGENT_CGID(ID) tablespace CABIO_MAP;
create index AGENT_CGID_DRUG on AGENT_CGID(DRUG) tablespace CABIO_MAP;
create index AGENT_CGID_EVS_ID on AGENT_CGID(EVS_ID) tablespace CABIO_MAP;
create index AGENT_CGID_IS_CMAP_AGENT on AGENT_CGID(IS_CMAP_AGENT) tablespace CABIO_MAP;
create index AGENT_CGID_SOURCE on AGENT_CGID(SOURCE) tablespace CABIO_MAP;
create index AGENT_CGID_COMMENTS on AGENT_CGID(COMMENTS) tablespace CABIO_MAP;
create index AGENT_CGID_NSC_NUMBER on AGENT_CGID(NSC_NUMBER) tablespace CABIO_MAP;

--EXIT;
