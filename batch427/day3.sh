for singleItem in `ls *.java`

do

      nameOfFile=`echo $singleItem | awk -F. '{ print $1 }'`

      mkdir $nameOfFile

      cp -r $singleItem $nameOfFile

done
