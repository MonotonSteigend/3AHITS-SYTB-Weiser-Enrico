#!/bin/bash

string=$1

if [ -d  "$string" ];
then
   count=$(ls -1 "$string" | wc -l)
   read -p "Soll das Directory $string (mit $count Files) gelöscht werden? [j|n]:" choice
   [[ "$choice" == "j" ]] && rm -rf "$string"
   mkdir "$string"
   echo "$string" > "${string}/${string}.txt" 

else
   #erstellen
   mkdir "$string"
   echo "$string" > "${string}/${string}.txt" 
fi
