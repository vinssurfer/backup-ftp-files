#!/bin/sh
# Check sendemail installation
sudo apt install sendemail -y

# Constants you need to modify
HOST=ftp_server
LOGIN=login
PASSWORD=password
PORT=21
SAVE_PATH=/home/sav
LOG_FILE=/var/log/backup.log
EMAIL=zzzz.wwww@xxx.com
SMTP=smtp.xxx.com
BACKUP_TITLE=My backup

# Go to the save path
cd $SAVE_PATH

# Recursive copy of files until 20 levels
wget --recursive --level=20 --output-file=$LOG_FILE ftp://$LOGIN:$PASSWORD@$HOST

# Send the mail with the log file
sendemail -f $EMAIL -t $EMAIL -u Backup $BACKUP_TITLE -m Fin bakup $BACKUP_TITLE -s $SMTP -a $LOG_FILE
