#!/bin/bash
awk -F, '$3 == 2 && $13 == "S" && $7 != "" { sum += $7; count += 1 } END { if (count > 0) print "Average Age (excluding null age entries):", sum/count }' ../titanic.csv

awk -F, '$3 == 2 && $13 == "S" { sum += $7; count += 1 } END { if (count > 0) print "Average Age(including null age entries):", sum/count }' ../titanic.csv
