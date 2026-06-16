#!/bin/bash

sum=0
count=0
average=0

read nums

for number in $nums
do

  ((sum+=number))
  ((count++))
done

((average=sum/count))

echo $average
