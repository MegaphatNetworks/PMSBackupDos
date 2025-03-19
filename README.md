# PMSBackupDos
Plex Media Server Backup (MS DOS Version)

This couldn't be any easier.
It's a batch file to make a complete backup of your Plex Media Server (PMS) on Windows.

REQUIREMENTS
7Zip - must have it to use.
64bit Windows - Does anyone run PMS on 32bit?  Please do not answer that!
focus - This means it's time to pay attention.

Line 5: set PMSBackup=F:\PMS_Backup\
You will need to change the destination from F:\PMS_Backup\ to YOUR destination.  F:\PMS_Backup\ just happens to be an external USB thumb drive I am using for my Plex backups. So be it Y:\Plex or G:\ for the root of a thumb drive, CHANGE THIS VALUE!

Next, be sure you run this script ONLY as the user which Plex is running under.  So in my case, I have the following users:
- Mom
- Dad
- Alfie
- Plex

Clearly Plex is the account that has Plex Media Server installed and running.  Therefore the script should ONLY run under this account!  I have my script running weekly.  It takes about 30 minutes and consumes about 9.3GB on my thumb drive.  

I created a scheduled task to automate the execution weekly.  Again the scheduled task is created as the Plex user, configured to execute whether or not the user is logged in.  
