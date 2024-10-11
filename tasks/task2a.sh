#!/bin/bash
cd ../dataset1
grep -rl 'sample' . | xargs grep -o 'CSC510' | awk -F':' '{print $1}' | sort | uniq -c | awk '$1 >= 3 {print substr($2, 3), $1}'
