LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/temp/relative_clone/all_mrna_mouse_stage.dat'
 
APPEND
 
INTO TABLE zstg_mouse_mrna 
 
REENABLE DISABLED_constraints  
FIELDS TERMINATED BY "	"
 
(qname, tname, tstart, tend, chromosome_no, chromosome_id)

