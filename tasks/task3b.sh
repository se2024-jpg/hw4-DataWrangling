#!/bin/bash
awk -F, 'BEGIN { OFS="," } 
    NR==1 { print $0; next }  # Print header as is
    { 
        if ($6 == "female") $6 = "F";     # Replace "female" with "F"
        else if ($6 == "male") $6 = "M";  # Replace "male" with "M"
        print $0; 
    }' ../titanic.csv > task3b_output.csv