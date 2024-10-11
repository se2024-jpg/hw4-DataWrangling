#!/bin/bash

head -n 1 ../titanic.csv > task3a_output.csv
awk -F, 'NR > 1 && $3 == 2 && $13 == "S" { print $0 }' ../titanic.csv
awk -F, 'NR > 1 && $3 == 2 && $13 == "S" { print $0 }' ../titanic.csv >> task3a_output.csv
