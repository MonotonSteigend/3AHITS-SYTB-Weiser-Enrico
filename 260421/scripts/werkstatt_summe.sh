a=$(cat klassenkassa.csv | grep "Werkstatt" | cut -d "," -f 3 | paste -s -d+ |bc
echo $a
