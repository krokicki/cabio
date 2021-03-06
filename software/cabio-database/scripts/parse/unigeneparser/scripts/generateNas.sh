#!/bin/sh

echo "\nGenerate nucleotide Sequences from Human and Mouse"
cd $CABIO_DIR/scripts/parse/unigeneparser/scripts
java -Xmx3072M -XX:+UseParallelGC -Xmn3072M -XX:+UseAdaptiveSizePolicy -classpath .:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar:../build gov.nih.nci.caBIO.dataload.GenerateNas "$CABIO_DATA_DIR"/ncbi_unigene nas.dat sequence.dat $1 $2 $3
