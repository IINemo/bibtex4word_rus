SETLOCAL 

set script_dir=%~dp0

::set exebibtex=%BIBTEX%
set exebibtex="%script_dir%\BibTeX_rus.bat"

:: Preventing errors in bibtex4word
echo. 2>"%TMP%\bibtex4word.blg"

set work_dir=%script_dir%workdir
md %work_dir%

echo. 2>"%work_dir%\bibtex4word.blg"

echo "Coping"
copy "%TMP%\bibtex4word.aux" %work_dir%

set curr_dir=%cd%
cd %work_dir%
echo "Generating"
::call %exebibtex% %work_dir%\bibtex4word
::call %exebibtex% %work_dir%\bibtex4word
call %exebibtex% bibtex4word
cd %curr_dir%

echo "Sedding"
subs.vbs "%work_dir%\bibtex4word.bbl" "%work_dir%\bibtex4word_sed.bbl"

echo "Moving"
copy "%work_dir%\bibtex4word_sed.bbl" "%TMP%\bibtex4word.bbl"

ENDLOCAL