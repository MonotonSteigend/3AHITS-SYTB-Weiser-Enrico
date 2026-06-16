#!/bin/bash
 
# while
counter=1
#while [ $counter -le 10 ] # <= 10
while ((counter <= 10))
do
    echo $counter
    ((counter++))
done
 
# for
 
echo "--- for ---"
# Liste = durch white-spaces getrennter string
data="1 2 3 4 5 6 7"
for d in $data
do
    echo $d
done
 
 
echo "--- Kommandozeilenargumente ---"
for arg in $@
do
    echo $arg
done
 
# brace expamsion {]
for value in {20..25}
do
    echo $value
done
 
 
echo "--- field seperator ---"
mylist="hallo welt,hello world,guten tag;ni hao"
IFS=",;" #internal field separator
for el in $mylist
do
    echo $el
done
