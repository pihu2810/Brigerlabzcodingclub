for singleItem in `ls *.pdf`

do

      nameOfFile=`echo $singleItem | awk -F. '{ print $1 }'`

      mkdir $nameOfFile

      cp -r $singleItem $nameOfFile

done
