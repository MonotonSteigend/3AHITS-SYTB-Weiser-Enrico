#!/bin/bash

filename="putty.zip"
checksumsExt="sums"

curl -L -o "$filename" "https://the.earth.li/~sgtatham/putty/latest/w64/putty.zip"

curl -L -o "$checksumsExt" "https://the.earth.li/~sgtatham/putty/latest/sha512sums.gpg"

curl -O "https://www.chiark.greenend.org.uk/~sgtatham/putty/keys/release-2023.asc"
gpg --import release-2023.asc

checksumExt=$(grep "w64/putty.zip" sums | cut -d ' ' -f 1)

checksumInt=$(openssl dgst -sha512 "$filename"  | cut -d " " -f 2)



echo "--------------------Signature--------------------"
gpg --verify "$checksumsExt"

echo " "
echo " "
if [ $? -eq 0 ]; then
    echo "Signature valid!"
else 
    echo "Signature invalid!"
fi
echo " " 
echo " " 
echo "-------------------------------------------------"
echo " "
echo " "
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
