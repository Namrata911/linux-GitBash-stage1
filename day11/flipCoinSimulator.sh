echo "Lets flip a coin..."
headCount=0
tailCount=0
totalFlips=0
while [ $headCount -lt 21 ] || [ $tailCount -lt 21 ]
do
	flip=$(( RANDOM%2 ))
	case $flip in
	0)
		echo "Head won"
		headCount=$(( $headCount+1 ))
	;;
	1)
		echo "Tail won"
		tailCount=$(( $tailCount+1 ))
	;;
	esac
	totalFlips=$(( $totalFlips+1 ))
done

echo "Number of times head was up : " $headCount
echo "Number of times tail was up : " $tailCount

if [ $headCount -gt $tailCount ]
then
	diff=$(( $headCount-$tailCount ))
	echo "So Head won by " $diff "times"

elif [ $headCount -lt $tailCount ]
then
	 diff=$(( $tailCount-$headCount ))
   echo "So tail won by " $diff "times"
else
		"Its a Tie!!!"
fi
