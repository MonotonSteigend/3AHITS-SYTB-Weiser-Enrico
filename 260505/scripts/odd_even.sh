#!/bin/bash
num=$1
if(( num%2==0 ));
then
   echo "even"
   exit 0
else
   echo "odd"
   exit 1
fi
