#!/bin/bash -x
#1=Head
#0=Tail
i=1
countHead=0
countTail=0
while [ $i -le 30 ]
do
	rand=$(($RANDOM%2))
	if [ $rand -eq 1 ]
	then
		countHead=$(( $countHead+1 ))
	else 
		countTail=$(( $countTail+1 ))
	fi
	((i++))
done

echo "Number Of time Heads : "$countHead
printf "\n"
echo "Number Of time Tails : "$countTail
printf "\n"

if [ $countHead -gt $countTail ]
then
		echo "Heads Win"
else
		echo "Tails Win"
fi
