#!/bin/bash

for i in *.fasta;
    do
        echo "Processing $i..."
        awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}'  $i  |\
        awk -F '\t' '{printf("%d\t%s\n",length($2),$0);}' |\
        sort -k1,1n | cut -f 2- | tr "\t" "\n" > $i.sorted.fasta
	echo "Processing $i...done"
    done
