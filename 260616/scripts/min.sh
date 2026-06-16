#!/bin/bash

min=""

for value in $(<"$1")
do
  if [[ -z "$min" ]] || ((value < min))
  then
    min=$value
  fi
done

echo "$min"
