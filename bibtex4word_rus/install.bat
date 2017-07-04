SETLOCAL 

set script_dir=%~dp0

set install_path=%1
md "%install_path%"
copy "%script_dir%\*" "%install_path%"
setx BIBEXE "%install_path%\bibtex4word_rus.bat"

ENDLOCAL
