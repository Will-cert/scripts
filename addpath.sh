
read PATH_TO_ADD
echo $PATH_TO_ADD
if [[ -d $PATH_TO_ADD ]]
then 
    sed "s/export PATH=\"\(.*\)\"/export PATH=\"\1\:${PATH_TO_ADD//\//\\/}\"/g" ~/.bashrc
elif [[ -f $PATH_TO_ADD ]]; then
    echo "$PATH_TO_ADD is a file and not a directory."
    exit 1
else
    echo "Path not found."
    exit 1
fi 
