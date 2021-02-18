file=$( /bin/ls /home/beta/dbBackups | /usr/bin/head -n 1)
num=$(/bin/ls /home/beta/dbBackups | /usr/bin/wc -l)
if [ $num -gt 4 ]
then
        /bin/rm /home/beta/dbBackups/$file
fi
