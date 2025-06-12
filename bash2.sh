function countfiles(){
if [ $# == 0 ]
then
 echo "No arguments given. Usage: countfiles dir1 dir2 ..."
else
 for i in $@
 do
  echo $i has $(ls -1a $i | wc -l) files
 done
fi
 }

