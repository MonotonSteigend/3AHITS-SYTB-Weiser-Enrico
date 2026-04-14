r=$(ls -l "$1" | wc -l)
echo "Es sind $((r-1)) Einträge im dir $1"
