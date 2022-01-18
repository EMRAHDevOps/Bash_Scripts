printf "\t\tWelcome to System Report!\n"

freespace=$(df -h|awk 'NR==2 {print $4}')
freemem=$(free -h | awk 'NR==2 {print $4}')

printf "\tdate:\t\t\%s\n" $(hostname)
printf "\tKernel Release:\t\%s\n" $(uname -r)
printf "\tBash Version\t\%s\n" $BASH_VERSION
printf "\tFree Storage:\t\%s\n" $freespace
printf "\tFree Memory:\t\%s\n" $freemem
printf "\tFiles in pwd:\t\%s\n" $(ls | wc -l)