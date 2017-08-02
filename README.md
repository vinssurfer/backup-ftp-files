# About
Linux script to backup ftp file to local folder with mail report.

To schedule the backup you can use crontab.
# Manual

Make the file backup.sh executable with the following command :
```
chmod +x backup.sh
```
To schedule the backup :
```
sudo crontab -e
```
and add a line with (exemple for a backup at 2:00 every monday)
```
# my backup
0 2 * * 1 /home/./backup.sh
```
