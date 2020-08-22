#/bin/bash

echo "getting 0x3e tools onto this machine..."

path=~/.0x3e
echo $path

if test -d $path; then
    mkdir -p $path;
fi
echo $0
#cp $0 $path/.
cd $path

git clone https://github.com/dave0xE7/0x3eTools .

echo "done"

exit