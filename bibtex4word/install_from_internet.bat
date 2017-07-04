SETLOCAL 

set script_dir=%~dp0

"%script_dir%\download.vbs" http://www.ee.ic.ac.uk/hp/staff/dmb/perl/bibtex4word.zip "%script_dir%\bibtex4word.zip"
"%script_dir%\install_from_zip.bat"

ENDLOCAL
