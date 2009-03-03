CREATE OR REPLACE FORCE VIEW CABIODEV.AGENT_OBJECT
(AGENT_ID, AGENT_TYPE, AGENT_NAME, AGENT_SOURCE, AGENT_COMMENT, 
 CMAP_AGENT, NSC_NUMBER, EVS_ID)
AS 
SELECT AGENT.AGENT_ID,
AGENT.AGENT_COMMENT,
AGENT.AGENT_NAME,
AGENT.AGENT_SOURCE,
AGENT.AGENT_TYPE,
AGENT.CMAP_AGENT,
AGENT.EVS_ID,
AGENT.NSC_NUMBER
FROM AGENT;

