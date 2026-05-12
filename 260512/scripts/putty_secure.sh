#!/bin/bash

filename="putty.zip"
checksumsExt="sums"

curl -L -o "$filename" "https://the.earth.li/~sgtatham/putty/latest/w64/putty.zip"

curl -L -o "$checksumsExt" "https://the.earth.li/~sgtatham/putty/0.83/sha512sums"

checksumExt=$(grep "w64/putty.zip" sums | cut -d ' ' -f 1)

checksumInt=$(openssl dgst -sha512 "$filename"  | cut -d " " -f 2)



echo "--------------------Checksums--------------------"
echo "$checksumExt"
echo "$checksumInt"
echo "-------------------------------------------------"



if [ "$checksumExt" == "$checksumInt" ]; then
    echo "Checksums equal!"
else 
    echo "checksums not equal!"
fi

rm "$checksumsExt"
