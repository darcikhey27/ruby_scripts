#!/bin/sh

SOURCE="/home/dk/Documents/GitHub/ruby_scripts" # the location of my repo
DEST="/home/dk/ruby/test_dest" #destination for webserver files

cd $SOURCE

echo "updating repo: executing git pull "
git pull

echo "\n finished with pulling files"

echo "files in web server  $DEST  are"
echo "-------------------"
ls -l $DEST
echo "\n\n"

echo "Updating files now: "
rm -rf $DEST*

cp -R $SOURCE $DEST
echo "----------------------------\n"
echo "Done updating files"
echo "\n\n"
echo "Current files are: "
ls -l $DEST

# restart apache server
echo "Restarting web server: "
service apache2 stop
service apache2 start

echo"\n\nDone!!"

