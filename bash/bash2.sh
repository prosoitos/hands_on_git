function countlines(){
if [ $# == 0 ];
then
 echo "No arguments given. Usage: countfiles dir1 dir2 ..."
else
 for i in $@
 do
  echo $i has $(cd $i | ls -1a | wc -l) files
 done
fi
 }

