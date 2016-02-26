#!/bin/bash

for i in `/usr/bin/seq -f "%g0000000.dump.csv" 2 17`
do
  cat ${i} |\
  cut -d "," -f 5 |\
  sort |\
  uniq -c |\
  sort -rn |\
  head -n 1 | cat -n

done
