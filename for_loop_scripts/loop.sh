#!/bin/bash

#first script sample 

# for i in 1 2 3 4 5
# do
#     echo " Welcome $i times"
# done

#second script sample create files

# for i in {1..5}
# do  
#  touch $i
# done

#third script sample create files and remove files

# for i in {1..5}
# do
#  touch $i
# done

# #######

# for i in {1..5}
# do
#  rm -rf $i
# done

# i=1

# for day in Mon Tue Wed Thu Fri
# do
#  echo "Weekday $((i++))" : $day
# done

i=1

for username in `awk -F: '{print $1}' /etc/passwd`
do
    echo "Username $((i++)) : $username"
done 


