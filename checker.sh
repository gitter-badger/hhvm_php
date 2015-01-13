#!/bin/bash

for i in $(find ./scripts/ -name *.php -type f); do
  echo $i;
  echo -en "\tPHP  - "; php -f $i; if [ $? -eq 0 ]; then echo "Ok"; else echo "Fail"; fi;
  echo -en "\tHHVM - "; hhvm -f $i; if [ $? -eq 0 ]; then echo "Ok"; else echo "Fail"; fi;
done;