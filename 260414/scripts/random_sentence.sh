wordlist=$(curl -s "https://www.franzmatejka.at/htl/doc/SYTB_3/testdata/wortliste1000.txt") >/dev/null
word_count=$(echo "$wordlist" | wc -l)
word_count=$((word_count+1))


sentence=$(echo "$wordlist " | shuf -n 1) >/dev/null

for i in {0..3}
do
  sentence+=$(echo " $wordlist" | shuf -n 1) >/dev/null
  sentence+=" "
done

echo "$sentence"
