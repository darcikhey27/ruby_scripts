#!/bin/sh

SOURCE="/home/dk/Documents/GitHub/ruby_scripts" # the location of my repo
DEST="/home/dk/ruby/test_dest" #destination for webserver files

cd $SOURCE

echo "updating repo: executing \ngit pull "
git pull

echo "\n finished with pulling files"

echo "files in web server location $DEST  are"
echo "-------------------"
ls -l $DEST
echo "\n\n"

echo "Updating files now: "
echo "Removing old files"
#rm -rf $DEST*
echo "\n\n copying new files"
#cp -R $SOURCE $DEST

echo "----------------------------\n"
echo "Done updating files"
echo "\n\n"
echo "Current files are: "
ls -l $DEST

