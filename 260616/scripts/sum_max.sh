#!/bin/bash

max=0
sum=0

for value in $@
do
  ((sum=sum+value))
  if((value>max))
  then
    max=$value
  fi
done

echo "Maximum: $max"
echo "Summe: $sum"
