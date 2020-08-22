#/bin/bash

echo "getting 0x3e tools onto this machine..."

startFilename=$0
startPath=$(pwd)

requiredPackages="git dialog"

if [ "$EUID" -ne 0 ]
    sudo apt-get install $requiredPackages -y
    then echo "Please run as root"
    #exit
else
    apt install $requiredPackages -y
fi


destpath=~/.0x3e
echo $destpath

if test -d $destpath/; then
    echo "existing installation found $destpath"
    echo "updating it..."
    cd $destpath
    git pull
else
    echo "no installation found"
    echo "creating $destpath"
    mkdir $destpath;
    echo "installing..."
    git clone https://github.com/dave0xE7/0x3eTools $destpath/.
fi
echo $0
#cp $0 $path/.
cd $destpath/

bash $destpath/install.sh

echo "done"

exit