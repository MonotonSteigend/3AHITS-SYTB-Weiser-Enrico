start_time=$(cat /tmp/start_time)
stop_time=$(date +%s)
echo $((stop_time - start_time))
