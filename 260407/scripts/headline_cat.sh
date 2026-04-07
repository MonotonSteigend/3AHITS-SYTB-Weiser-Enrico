touch result.txt
echo "" > result.txt
for file in "$@"
do
   echo "=====${file}==================" >> result.txt
   cat "$file" >> result.txt
done
