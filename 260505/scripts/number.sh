#!/bin/bash

# Hilfe-Option prüfen
if [[ "$1" == "-?" ]]; then
    echo "number.sh: number lines of input"
    echo "usage: number.sh [FILE]"
    echo "FILE ... path to readable file of nonzero length"
    echo "if FILE is omitted data is read from standard input"
    exit 0
fi


if [ -n "$1" ]; then
   FILE="$1"
   if [ ! -e "$FILE" ]; then
      echo "Fehler: Datei '$FILE' existiert nicht."
      exit 1
   fi
   if [ ! -r "$FILE" ]; 
   then
      echo "Fehler: Datei '$FILE' ist nicht lesbar."
      exit 1
   fi
   if [ ! -s "$FILE" ]; 
   then
      echo "Fehler: Datei '$FILE' ist leer."
      exit 1
   fi

   nl "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

else
    nl /dev/stdin
fi
