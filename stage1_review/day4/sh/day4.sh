for file in `ls *`
do 

  parent="${file%.*}"
child="${file#*.}"
pathname="${parent}"/"${child}"
if [ -d "${pathname}" ]
then
rm -rf "${pathname}"
fi
mkdir -p "${pathname}"
cp -r "${file}" "${pathname}"
done
