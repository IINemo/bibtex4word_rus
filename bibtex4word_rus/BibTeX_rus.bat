SETLOCAL 

set script_dir=%~dp0
set work_dir=%script_dir%\workdir

set curr_dir=%cd%
cd %work_dir%

bibtex8.exe --huge --csfile %script_dir%\cp1251rus.csf %1 %2 %3 %4 %5 %6 %7 %8 %9

cd %curr_dir%

ENDLOCAL