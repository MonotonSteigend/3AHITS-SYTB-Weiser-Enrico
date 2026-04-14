ball_date="2027-01-16"


ball_seconds=$(date -d "$ball_date" +%s)
curr_seconds=$(date +%s)

diff_tage=$(( (ball_seconds - curr_seconds) / 86400 ))

echo "Es sind noch $diff_tage Tage bis zum HTL Ball ($ball_date)"
