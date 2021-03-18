#!/bin/bash

# start to log
script -f ~/logger.log
# send email indicating that everything started running
Rscript beginExec.R
# iterate over the files in order to run mafft on them
# and name the output files accordingly
for i in `ls *.fasta`; do
    mafft --maxiterate 1000 --thread 24 --localpair $i > $i.aligned.fasta
done
# stop recording the logger
exit
# send email with the log file
Rscript finishExec.R
