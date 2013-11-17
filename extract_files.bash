#!/bin/bash

# Extract files and strip off the CREATE TABLE and such that pgdbf puts in 
# so it is just the raw data
ls *.dbf | xargs -I xxxx bash -c 'pgdbf -s latin1 -CDT xxxx | tail -n +2 | head -n -1 >> tiger_all.dump'

# Now cut out only the fields we care about and eliminate duplicates.
# Duplicates can come from where county border roads overlap for example.
cut -f2-17 tiger_all.dump | sort | uniq > tiger_all_deduped.dump
