#!/bin/sh
echo "1) sub ex"
echo "i have a water." | awk -F " " '{sub("a","b",$2); print $1 $2 $3 $4}'

echo "2) gsub ex"
echo "i have a water." | awk -F " " '{ gsub("a","b"); print $1" "$2" "$3" "$4}'

echo "3) index ex"
echo "i have a water." | awk -F " "  '{print index($4,"a")}'

echo "4) split ex"
echo "A/B/C/D/E/F/G" | awk -F " " '{print split($1,array,"/");print array[1];print array[3];}'	
