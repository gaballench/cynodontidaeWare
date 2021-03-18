#!/bin/bash

for i in $(ls *.trimmed.fasta)
do
    echo "Running jModelTest2 on $i\n"
    java -jar ~/programs/jmodeltest2/dist/jModelTest.jar -BIC -d $i -f -i -g 4 -s 3 -t ML -tr 4 -o $i`date +"%H.%M_%d_%m_%Y"`'.out'
done
