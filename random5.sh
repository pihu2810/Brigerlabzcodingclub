
for i in `seq 1 5`
do
 n=`expr $RANDOM % 99`
 echo "random numbers: $n"
sum=`expr $sum + $n`
done
echo "sum of random number: $sum"
x=5
y=`expr $sum / $x`
echo " average of random number: $y"
