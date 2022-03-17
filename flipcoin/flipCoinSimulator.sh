headcount=0
tailcount=0
while [ $headcount -lt 21 -o $tailcount -lt 21 ]
do
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP == 1 ];then
    ((headcount=headcount+1))
     echo "heads"
if [ $headcount == 21 ]
then
break
fi
else
((tailcount=tailcount+1))
echo "tails"
if [ $tailcount == 21 ]
then
break
fi
fi
done

echo "headacount has won $headcount times"
echo "tailcount has won $tailcount times"

if [ $headcount == 21 -a $tailcount == 21 ]; then
echo "Its a tie!!"
while [ `expr $headcount - $tailcount` == 2 -o `expr $tailcount- $headcount ` == 2 ]
do
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP == 1 ];then
    ((headcount=headcount+1))
else
((tailcount=tailcount+1))
fi
done

echo "headacount has won $headcount times"
echo "tailcount has won $tailcount times"
fi

if [ $headcount == 21 ]; then
margin=`expr $headcount - $tailcount`
echo " Headcount won by difference of $margin"
elif [ $tailcount == 21 ]; then
margin=`expr $tailcount - $headcount`
echo " tailcount won by difference of $margin"
fi
: '
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi
'