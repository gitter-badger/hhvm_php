#!/bin/bash

for i in $(find ./scripts/ -name *.php -type f); do
  echo $i;
  printf "\tPHP  - "; php -f $i; if [ $? -eq 0 ]; then echo "Ok"; else echo "Fail"; fi;
  printf "\tHHVM - "; hhvm -f $i; if [ $? -eq 0 ]; then echo "Ok"; else echo "Fail"; fi;
done;