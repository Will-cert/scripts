
PATH_TO_ADD=$1

if [[-d $PATH_TO_ADD]]
then 
    sed "s/export PATH=\"\(.*\)\"/export PATH=\"\1\:$test\"/g" ~/.bashrc
elif [[ -f $PATH_TO_ADD]]; then
    echo "$PATH_TO_ADD is a file and not a directory."
    exit 1
else
    echo "Path not found."
    exit 1
fi 
