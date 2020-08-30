#!/bin/bash


#Variable Declaration
nums=$(echo {0, 1, 2, 3, 4, 5, 6, 7, 8, 9})
states=('New York' 'California' 'Oregon' 'Washington' 'Arizona')
ls_out=$(ls)

#Start of Loops
#for loop that prints out 3, 5, and 7 from my list
for num in ${nums[@]};
do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
    echo $num
  fi 
done

#for loop that checks if state of Hawaii is on my list and print the proper response
for state in ${states[@]};
do
  if [ $state == 'Hawaii' ];
  then
    echo "Hawaii is the best!"
  else
    echo "I'm not fond of Hawaii."
  fi
done

#for loop that prints out the items that hold an output of the ls command
for x in ${ls_out[@]};
do
  echo $x
done



