
for ((i=0;i<11;i++))
do
if [ $(($i%2)) == 0 ]
then 
     echo "$i"
fi
done
