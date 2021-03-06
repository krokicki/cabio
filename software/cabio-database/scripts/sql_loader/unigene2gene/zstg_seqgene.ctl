LOAD DATA 
 
INFILE '$CABIO_DATA_DIR/relative_clone/human/seq_gene.md'
INFILE '$CABIO_DATA_DIR/relative_clone/mouse/seq_gene.md'

APPEND
 
INTO TABLE zstg_seqgene 
REENABLE DISABLED_constraints  
FIELDS TERMINATED BY "	"
TRAILING NULLCOLS
(tax_id "DECODE(:tax_id,9606,5,6)",
chromosome,
chr_start,
chr_stop,
chr_orient,
contig,
ctg_start,
ctg_stop,
ctg_orient,
feature_name,
feature_id,
feature_type,
group_label,
transcript,
evidence_code)
