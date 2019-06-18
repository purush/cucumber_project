for i in `ps -ef  | grep threadtime  |  grep -v "grep threadtime" | awk '{print $2}' `
do
kill -9  $i
done 
