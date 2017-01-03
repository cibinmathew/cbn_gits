
function myindexfolders() { 
if [ -z "$1" ]; then
    #display usage if no parameters given
    echo "Usage: cibin index all folders to $Universal_home/Downloads/all_folders.db"
	lfind /cygdrive -type d -iname "*" > "$Universal_home/Downloads/all_folders.db"
   cat "$Universal_home/Downloads/all_folders.db" 
   cat "$Universal_home/Downloads/all_folders.db" | sed -r "s/\\/cygdrive\\/(.)\\//\1:\\\\\\\/" | sed -e "s/\\//\\\\\\\/g"  > "$Universal_home/Downloads/all_folders2.db"
fi
 }


function myindexemacs() { 
file="$Universal_home/AppData/Roaming/.file_cache"
if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: cibin index all files to $file"
	echo '(' > "$file"
#	lfind.exe /cygdrive/c/cbn_gits/AHK/LIB  -iname "*.ahk" -printf '("%P" "%h")\n'  | sed -r "s/\\/cygdrive\\/(.)\\//\1:\//" | tr -d '\n' >> "$file"
	lfind  /cygdrive/c/cbn_gits/AHK/*  $Universal_home/Downloads/* -iregex ".*\.\(txt\|py\|ini\|java\|ahk\)" -printf '("%f" "%h")\n'  | sed -r "s/\\/cygdrive\\/(.)\\//\1:\//" | tr -d '\n' >> "$file"
	echo ')' >> "$file"
fi
 }

function myindex() { 
if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: cibin index all files to $Universal_home/Downloads/all_files_unfiltered.db"
	lfind /cygdrive/c -iname "*"  > "$Universal_home/Downloads/all_files_unfiltered.db"
	cat "$Universal_home/Downloads/all_files_unfiltered.db" | grep -v "/cygdrive/c/\$Recycle.Bin/" | grep -v "/cygdrive/c/\$WINDOWS.~BT/" | grep -v "/cygdrive/c/Users/cibin/AppData/" | grep -v "/cygdrive/c/my_bin/" | grep -v "/cygdrive/c/Windows/" > "$Universal_home/Downloads/all_files.db"
	# "/cygdrive/c/Windows/WinSxS/" | grep -v "/cygdrive/c/Windows/Microsoft.NET/" 
 
 fi
 }

 
 
 