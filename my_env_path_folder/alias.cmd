REM @echo off

REM http://winaero.com/blog/how-to-set-aliases-for-the-command-prompt-in-windows/
doskey cd.=cd ..
doskey cd..=cd ..\..
doskey cd...=cd ..\..\..
doskey ..=cd ..
doskey ...=cd ..\..

doskey cdmisc=cd C:\cbn_gits\misc
doskey cdahk=cd C:\cbn_gits\AHK
doskey cd~=cd %USERPROFILE%
doskey cdh=cd %USERPROFILE%
doskey cdd=cd %USERPROFILE%\Downloads
doskey cdp=cd%USERPROFILE%\Downloads\Projects

doskey ex=exit
doskey r=C:\cygwin64\bin\python3.6m.exe C:\cygwin64\bin\ranger
doskey ranger=C:\cygwin64\bin\python3.6m.exe C:\cygwin64\bin\ranger


doskey s=bash --login -i -c "s"
doskey scf=bash --login -i -c "scf"
doskey sf=bash --login -i -c "sf"
doskey snf=bash --login -i -c "snf"

REM TODO add this to bash also (ranger if possible)
doskey gdf=git diff --name-only $T git diff
doskey gcm=git diff --name-only $T git commit -a -m "$1" $T git push
REM doskey gcm=git diff --name-only $T git commit -a -m "$1" $T set /p DUMMY=Hit ENTER to continue... $T git push

doskey cd = cd /d $* ^&^& "C:\cbn_gits\my_env_path_folder\cmd-set-title.bat"
doskey cd=@echo off$Tcd /d $*$T@title ^%cd^%$Techo on
doskey cd=cd $* $T dir

doskey vi=vim

rem todo  add ~/basic-settings-no-plugins.vimrc
doskey vimu=vim -u NONE

title %cd%
