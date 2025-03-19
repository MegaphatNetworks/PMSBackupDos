# PMSBackupDos
Plex Media Server Backup (MS DOS Version)

This couldn't be any easier.
It's a batch file to make a complete backup of your Plex Media Server (PMS) on Windows.

*** THIS SCRIPT will ONLY back up your Plex Server Settings!  No Media will be backed up from this process!  Why?  I have a SAN (Storage Attached Network) with my media on it.  It connects via fiber channel.  If my Plex server drops dead, I can rebuild a computer to run Plex and my media is safe, but ALL of my Plex settings are GONE!  But with a little USB stick? Just reinstall Plex, then  Restore the contents to my "%LocalAppData%\Plex Media Server\" folder (Yes you can issue a command 'Explorer "%LocalAppData%\Plex Media Server\" ' and Windows Explorer will open there!  The backup will have the configuration from the disk as well as the registry entries.  There will be a .reg file.  Just double click to import AFTER restoring the 7Zip files.

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
I provided a somewhat generic version of the Exported XML file from the Scheduled Task if you wish to import it BUT I need to warn you that you WILL need to change the following line:
    <Author>PLEXSERVER\Plex</Author>
to read as your PlexServerName\YourPlexAccountName
Additionally you may wish to change the task name from <URI>\PMS Backup</URI> to whatever task name you wish.


