clear
echo "Enter seconds "
read secs
h=$(( secs / 3600 ))

m=$(( ( secs / 60 ) % 60 ))

s=$(( secs % 60 ))


printf "%02d hours :%02d mins:%02d seconds\n" $h $m $s
