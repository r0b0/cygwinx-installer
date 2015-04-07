set CYGWIN_ROOT_DIR=%APPDATA%\cygwin
set Path=%CYGWIN_ROOT_DIR%\bin;%Path%

if "%1"=="" goto no_file

for /f "delims=" %%i in ('cygpath -ua %1') do set ARG1_CYGWIN=%%i
bash.exe -c "/bin/mkdir.exe -p $HOME"
xlaunch.exe -run %ARG1_CYGWIN%
goto end

:no_file
xlaunch.exe

:end

