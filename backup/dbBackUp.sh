#!/bin/bash
SHELL=/bin/sh
YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
HOUR=`date +%H`
MINUTE=`date +%M`
#Below command will make a copy of the sql file
/opt/lampp/bin/mysqldump -u root -pmysql12345 rit_data_center > /home/gamma/RIT-Data-Center/backup/$YEAR-$MONTH-$DAY-$MINUTE-backup.sql

#Below two commands can be used to send the file to the beta server
#/usr/local/bin/sshpass -p rit2019 scp /home/gamma/rit-data-center/RIT-Information-Site/backup/2018-08-30-backup.sql  beta@172.1.16.106:/home/beta/
/usr/local/bin/sshpass -p rit2019 rsync -av  /home/gamma/RIT-Data-Center/backup/$YEAR-$MONTH-$DAY-$MINUTE-backup.sql  beta@172.1.16.106:/home/beta/dbBackups

#For deleting file from present server use : 
/bin/rm  /home/gamma/RIT-Data-Center/backup/$YEAR-$MONTH-$DAY-$MINUTE-backup.sql

