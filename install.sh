#!/bin/bash



path=~/.0x3e
bashrcline="alias 0x3e='bash $path/tools.sh'"

echo $path
echo $bashrcline

declare file=~/.bashrc
declare regex="\s+$bashrcline\s+"

echo $file

declare file_content=$( cat "${file}" )
if [[ " $file_content " =~ $regex ]] # please note the space before and after the file content
    then
        echo "found"
    else
        echo "not found"

        echo  $bashrcline >> ~/.bashrc
fi

echo "You can now use the command '0x3e' in your shell"

bash

exit