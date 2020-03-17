function count_files {
        echo $(ls -lha | egrep '^-' | wc -l)
}

int_exp='^[0-9]+$'
float_exp='^[0-9]+\.[0-9]+$'
num_files=$(count_files)
clear

while [[ 0 ]]
 do
  echo "How many files are in the current directory?"
  read number
  #If number is a integer
  if [[ $number =~ $int_exp ]]
    then
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
  #If number is a float
   elif [[ $number =~ $float_exp ]]
      then
      echo "Please, insert a integer"
  #If it isn't a number
   else
     echo "Please, insert a number"
  fi
done