#!/bin/bash
echo "SCRIPT $0 RUN"
path="/tmp/lesson3/permissions"

mkdir -pv $path
touch $path/file1_cont.txt
echo "small text content of the file" > $path/file1_cont.txt
ln -s $path/file1_cont.txt $path/softLinkFile
ln $path/file1_cont.txt $path/hardLinkFile
ln -s $path/softLinkFile /tmp/lesson3/softLinkFile2
echo "METADATA OF FILES:"
echo " "
ls -laiR /tmp/lesson3
echo "DATA IN FILES:"
echo ""
echo "#1"
cat $path/file1_cont.txt
echo "#2"
cat $path/softLinkFile
echo "#3"
cat $path/hardLinkFile
echo "#4"
cat /tmp/lesson3/softLinkFile2
mv -v $path/softLinkFile /tmp
mv -v $path/hardLinkFile /tmp
echo ""
echo "AFTER MOVING OF LINKS"
echo "METADATA OF FILES:"
echo ""
ls -laiR /tmp/lesson3
echo "DATA IN FILES:"
echo""
echo "#1"
cat $path/file1_cont.txt
echo "#2"
cat /tmp/softLinkFile
echo "#3"
cat /tmp/hardLinkFile
echo "#4"
cat /tmp/lesson3/softLinkFile2
echo "SCRIPT $0 END"
