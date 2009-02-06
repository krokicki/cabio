LOAD DATA 
 
INFILE '/cabio/cabiodb/cabio_data/marker/human/UniSTS_human.sts'
INFILE '/cabio/cabiodb/cabio_data/marker/mouse/UniSTS_mouse.sts'

APPEND
 
INTO TABLE marker 
 
REENABLE DISABLED_constraints  
FIELDS TERMINATED BY "	"
TRAILING NULLCOLS
(
marker_ID,
Primer1 filler,
Primer2 filler,
PCRProduct filler,
NAME,
chromosomeNumber filler,
AccNo,
taxon_ID "DECODE(:taxon_id,'Homo sapiens',5,'Mus musculus', 6)",
TYPE CONSTANT "UNISTS",
ID SEQUENCE(MAX, 1)
)
