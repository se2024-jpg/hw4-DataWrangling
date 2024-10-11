#!/bin/bash
awk '{ cmd="stat -f%z ../dataset1/" $1; cmd | getline size; close(cmd); print $2, size, $1 }' | sort -k1,1nr -k2,2n | awk '{print $3, $1}'
