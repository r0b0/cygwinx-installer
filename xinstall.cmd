set CYGWIN_SETUP_FILE=%Temp%\setup-x86.exe
set CYGWIN_ROOT_DIR=%APPDATA%\cygwin
set MIRROR_URL=http://ftp-stud.hs-esslingen.de/pub/Mirrors/sources.redhat.com/cygwin/

if not exist %CYGWIN_SETUP_FILE% powershell -Command "(New-Object Net.WebClient).DownloadFile('http://cygwin.com/setup-x86.exe', '%CYGWIN_SETUP_FILE%')"

%CYGWIN_SETUP_FILE% --site %MIRROR_URL% --no-admin --root %CYGWIN_ROOT_DIR% --packages xorg-server,xinit,xlaunch,openssh --no-shortcuts --upgrade-also --quiet-mode

%CYGWIN_ROOT_DIR%\bin\xlaunch.exe

