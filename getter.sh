#/bin/bash

echo "getting 0x3e tools onto this machine..."

sudo apt-get install git -y
sudo apt-get install dialog -y

destpath=~/.0x3e
echo $destpath

if test -d $destpath/; then
    echo "found $destpath"
else
    echo "create .0x3e/"
    mkdir $destpath;
fi
echo $0
#cp $0 $path/.
cd $destpath/

git clone https://github.com/dave0xE7/0x3eTools $destpath/.

bash $destpath/install.sh

echo "done"

exit