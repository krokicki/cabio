LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/cgdc/agents.txt'
 
APPEND
 
INTO TABLE zstg_agents_nsc 
 
REENABLE DISABLED_constraints  
FIELDS TERMINATED BY ","
 
TRAILING NULLCOLS
(
NSC_NUMBER,
agent_NAME
)