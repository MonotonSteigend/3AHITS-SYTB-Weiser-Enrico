
#Hallo Welt

#Shell Script = Textdatei mit shell Befehlen
#Befehle ergeben das gleiche Ergebnis wie in der Shell ausgefuehrt

echo $MYVAR WELT
echo Guten Morgen


FILE_NAME=TEST.txt
DIR_NAME=mydir
#mkdir "$DIR_NAME"

echo "Irgendein Text" > "$DIR_NAME/$FILE_NAME"


#double quotes ""
NAME="Enrico"
TEXT="HALLO $NAME"

echo $TEXT

#single quotes ''
TEXT2='HALLO $NAME'
echo $TEXT2

#curly braces {}
FILE=myname
#echo "$FILE_001.txt"
#echo "$FILE_002.txt"

echo "${FILE}_001.txt"
echo "${FILE}_002.txt"