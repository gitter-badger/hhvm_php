#!/bin/bash

for i in $(find ./scripts/ -name *.php -type f); do
  echo $i;
  echo -ne "\tPHP  - "; php -f $i; if [ $? -eq 0 ]; then echo "Ok"; else echo "Fail"; fi;
  echo -ne "\tHHVM - "; hhvm -f $i; if [ $? -eq 0 ]; then echo "Ok"; else echo "Fail"; fi;
done;