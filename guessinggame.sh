function count_files{
	echo $(ls -lh | egrep "^-" |wc -l)
}
  
num_files=$(count_files)
clear

while [[ 0 ]]
 do
  echo "How many files are in the current directory?"
  read number
  if [[ $number -eq $num_files ]]
    then
    echo "Congratulations!!!"
    exit 0
  elif [[ $number -lt $num_files ]]
    then
    echo " $number??, too low "
  else 
    echo " $number??, too high "
  fi
done
