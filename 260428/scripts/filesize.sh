
FILE=$1
SIZE=$(ls -l "$FILE" | tr -s ' ' | cut -d ' ' -f 5)

test "$SIZE" -gt 100 && echo "Datei ist zu groß" || echo "Groesse OK"