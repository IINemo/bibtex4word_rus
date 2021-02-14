SETLOCAL 

if "%1"=="" echo "Usage: install_all.bat <path to install dir>" & exit /b; 

set script_dir=%~dp0
set install_path=%1

call "%script_dir%\bibtex4word_rus\install.bat" "%install_path%"

::set script_dir=%~dp0
call "%script_dir%\bibtex4word\install_from_internet.bat"

ENDLOCAL
