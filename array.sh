

os=("ubuntu" "centOS" "windows")
os[4]="mac"
 unset os[1]
echo "${os[@]}"
echo "${#os[@]}"
echo "${!os[@]}"
echo "${os[0]}"
