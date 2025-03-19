@echo off
cls
echo Starting Plex Media Server Backup - Files
Set StartTime=%time%
set PMSBackup=F:\PMS_Backup\
IF EXIST "F:\PMS_Backup\PlexBackup.7z" (
    echo *** Archive Exists, Updating.
    "%ProgramFiles%\7-Zip\7z.exe" u "%PMSBackup%\PlexBackup.7z" "%LocalAppData%\Plex Media Server\" 
) ELSE (
    echo *** NO Archive Exists, Creating.
    "%ProgramFiles%\7-Zip\7z.exe" a "%PMSBackup%\PlexBackup.7z" "%LocalAppData%\Plex Media Server\" 
)
echo Backup Plex Media Server - Registry Entry
regedit /e %PMSBackup%\PlexReg.reg "HKEY_CURRENT_USER\SOFTWARE\Plex, Inc.\Plex Media Server"
echo Finished Plex Media Server Backup 
Echo Started: %StartTime%     Finished: %time%
