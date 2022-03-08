var1=20
var2=20
if [ $var2 -gt $var1 ]
then 
   echo "var2 is greater than $var1"
elif 
   [ $var2 -eq $var1 ]
then 
     echo "variable are equal"
else 
   echo "$var2 is less than $var1"
fi
