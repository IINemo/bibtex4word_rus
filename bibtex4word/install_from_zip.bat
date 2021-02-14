SETLOCAL 

set script_dir=%~dp0

set INSTALL_DIR="%AppData%\Microsoft\Word\STARTUP"
"%script_dir%\unzip.vbs" "%script_dir%\bibtex4word.zip" "%script_dir%\bibtex4word"
mkdir "%INSTALL_DIR%"
copy "%script_dir%\bibtex4word\bibtex4word.dot" "%INSTALL_DIR%"

ENDLOCAL
