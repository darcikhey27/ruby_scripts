#!/bin/sh
# author: Darci K 
# darcikhey27@gmail.com
# darcikhey.com
#
# host your own web server at your place and use git 
# to keep files updated
#
# use sudo when executing script
# 

# the location of your git repo where you keep your webfiles ex..index.html, CSS, JavaScript
SOURCE="/home/darci/Github/web-project/" 

DEST="/var/www/html/"  # destination dir for web server, I'm using apache

cd $SOURCE

clear

echo "updating repo: executing \ngit pull "
git pull

echo "\n finished with pulling files"

echo "files in web server location $DEST  are"
echo "-------------------"
ls -l $DEST
echo "\n\n"

echo "Updating files now: "
echo "Removing old files"
rm -rf $DEST*

echo "\n\n copying new files"
cp -R * $DEST

echo "----------------------------\n"
echo "Done updating files"
echo "\n\n"
echo "Current files in $DEST are: "
ls -l $DEST
echo "\n"

# restart apache server
echo "Restarting web server: \n"
service apache2 stop

echo "\n\n"
service apache2 start

echo "\n\nDone!!"
echo "webserver files are up to date with repo at: \n"
echo $SOURCE
echo "\n"
