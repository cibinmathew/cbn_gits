#!/usr/bin/sh

# array:
# ${arr[*]} # All of the items in the array
# ${!arr[*]} # All of the indexes in the array
# ${#arr[*]} # Number of items in the array
# ${#arr[0]} # Length of item zero

# path ${0}
# parent path ${0%/*}
# filename ${0##*/}
# dir=$(dirname "$BASH_SOURCE[0]$$*/}")

# A=( foo bar "a  b c" 42 )
# B=("${A[@]:1:2}") # :1:2 takes a slice of length 2, starting at index 1. 
# C=("${A[@]:1}")   # slice to the end of the array
# echo "${B[@]}"    # bar a  b c
# echo "${B[1]}"    # a b c
# echo "${C[@]}"    # bar a  b c 42

# for arguments
# echo "${@:1:2}"
# echo "$HOME"
# $HOME is different for cmd,bash,emacs terminals
source /home/"$USERNAME"/myalias.sh
source /home/"$USERNAME"/set_defaults.sh
# source $HOME/myalias.sh
# source $HOME/set_defaults.sh 

function grephere() {

	search_term=$(make_wildcard_search_term "$@")
	cwd=$(pwd)
	echo "searching $1 in $cwd"

	echo "grep -Ein $search_term *.* --color=auto"
	grep -Ein $search_term *.* --color=auto

}
function rgrep() {

	search_term=$(make_wildcard_search_term "$@")
	cwd=$(pwd)
	echo "search  $1 in ,$cwdd"

	echo "grep -Eirn $search_term *.* --color=auto"
	grep -Eirn $search_term *.* --color=auto

}
function rrgrep() {

	cwd=$(pwd)
	echo "searching $1 in $cwd"
	search_term=$(make_wildcard_search_term "$@")
	echo "grep -Eirn $1 ../*.* --color=auto"
	grep -Eirn $search_term ../*.* --color=auto

}

function grepfind() {

	cwd=$(pwd)
	search_term=$(make_wildcard_search_term "$@")
	echo "searching $1 in $cwd"

	echo "lfind . -type f -exec grep -nH $1 {}  --color=auto\;"
	lfind . -type f -exec grep -nH $search_term {}  --color=auto\;

}
#extract function. This combines a lot of utilities to allow you to decompress just about any compressed file format. There are a number of variations, but this one comes from here:
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
 echo "print extract syntax for learning"
    if [ -f $1 ] ; then
        NAME=${1%.*}
        mkdir $NAME && cd $NAME
        echo "name is $NAME"
        
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}


function rrfindhere() {

	if [ -z "$1" ]; then
	echo "Usage: cibin find all files "
	else
	cwd=$(pwd)
	search=""
	search_term=$(make_wildcard_search_term "$@")
	echo "lfind . -iname $search"
	lfind ../ -iname "$search_term"
	# lfind . -maxdepth $1 -iname "*" | grep -iP "(?=.*$2[^/]*$)(?=.*$3[^/]*$)"
	fi
}
function findhere() {

	if [ -z "$1" ]; then
	echo "Usage: cibin find all files "
	else
	cwd=$(pwd)
	search=""
	search_term=$(make_wildcard_search_term "$@")
	echo "lfind . -iname $search"
	lfind . -iname "$search_term"
	# lfind . -maxdepth $1 -iname "*" | grep -iP "(?=.*$2[^/]*$)(?=.*$3[^/]*$)"
	fi
}

function make_lookaround_search_term() {
	# prepare lookaround search term

	search=""
	for arg in $@; do
		search=$search\(?=.*$arg[^\\/]*$\)
	# search=$search.\*$arg
	# echo $arg
	# echo $search
	done
	# search=$search.\*
	echo "$search"
}

function make_wildcard_search_term() {
	# prepare wildcard search term

	search=""
	for arg in $@; do
		search=$search\*$arg
	done
	search=$search\*
	echo "$search"
}

function pcfind() {
	if [ -z "$3" ]; then
		echo "Usage: cibin find $1"
	else
		maxdepth=100
		local search_term=""
		search_term=$(make_lookaround_search_term ${@:3})
		echo $search_term
		case "$1" in
			"all"			) files="$Universal_home/Downloads/all_files_unfiltered.db";;
			"common"		) files="$Universal_home/Downloads/all_files.db";;
			"h"|"here"		) files=("$(pwd)");maxdepth=1;;
			"hh"			) files=("$(pwd)");maxdepth=2;;
			"hhh"			) files=("$(pwd)");maxdepth=3;;
			"hhh"			) files=("$(pwd)");maxdepth=4;;
			"rhere"			) files=("$(pwd)");;
			"rrhere" 	) files=("$(dirname "$(pwd)")"/*);;
		esac
		echo "$files"
		
		case "$2" in
			"db"		)
					# echo "adfadsf"
					grep -rPIi "$search_term" --color=auto "$files" |  remove_cygdrive;;
			"live"		) 
					# echo "adf"
					lfind "$files" -maxdepth "$maxdepth" -iname "*" | grep -Pi "$search_term" --color=auto|remove_cygdrive;;
					
		esac
	fi
}
function remove_cygdrive() {

# converts /cygdrive/c/abc to c:/abc

# http://stackoverflow.com/a/18766794
	# capture piped input only otherwise arguments
	# if read -t 0; then
        # arg=$(cat)
    # else
        # arg="$*"
    # fi
	# echo "$arg"
	
	sed -e "s/\\/cygdrive\\/\\(.\\)\\//\\1:\\//"  -- "$@"
}

function some-cron-jobs() {

    # TODO: separate the jobs or add interval info to it
    # locatedb update
    # emacs indexing
    # all_files.db indexing
    # 
	echo "TODO"
    
}

# TODO:
# pcfind searchTerm
# h=here
# hh=here maxdepth2
# hhh
# r=recurse
# pcfind hhh searchTerm


function grepfilelist_related() {
	tr -d '\r' < C:/Users/cibin/AppData/Roaming/.emacs.d/tmp/filelist.txt > C:/Users/cibin/AppData/Roaming/.emacs.d/tmp/filelist2.txt
	run_grepfilelist $1
}
function grepfilelist_common() {
	tr -d '\r' < C:/Users/cibin/AppData/Roaming/.emacs.d/tmp/all-common-filelist.txt > C:/Users/cibin/AppData/Roaming/.emacs.d/tmp/filelist2.txt
	run_grepfilelist $1
}
	
function run_grepfilelist() {
	while read filename; do 
		# echo "$filename"
		grep -PnIi $1 --color=auto  "$filename"  /dev/null; 
	done <C:/Users/cibin/AppData/Roaming/.emacs.d/tmp/filelist2.txt
}

# TODO: ag searchterm1 searchterm2 searchTerm3; here it shouldnot take searchTerm1 as locations to search

# common extensions txt,
# ag  all/common/downs/ahk/notes/here/hhere   common/code/txt   searchTerm
# ag all txt searchTerm
# ag all [common] searchTerm
# ag [common] [common] searchTerm
# agn(ag notes) searchTerm=cmd note-folder note-files-extensions searchTerm
# agn abc
function advgrep() {


	declare -a files=("$Universal_home/Downloads/*txt")
	ext=".*\.\(txt\)"
	# TODO:
	# load notes filelist from settings.ini
	# all_notes=$(sed -n 's/.*all_notes *= *\([^ ]*.*\)/\1/p' < settings.ini)
	# all_notes=($all_notes)
	declare -a all_notes=("$Universal_home/Downloads/notes.txt" "$Universal_home/Downloads/notes3.txt" "$Universal_home/Downloads/todo.txt" "$Universal_home/Downloads/work-todo.txt" "$Universal_home/Downloads/work-notes.txt" "$Universal_home/Downloads/todo.org" "$Universal_home/Downloads/clear these doubts.txt" )
	
	echo "pwd= $(pwd)"
	if [ -z "$1" ]; then
		echo "cmd  all/common/downs/ahk/notes/here/hhere   common/code/txt   searchTerm"
	else
		if [ -z "$2" ]; then
			search_term="$1"
		else
			case "$1" in
				"a"|"all"		) declare -a files=("$Universal_home/Desktop/*" "$Universal_home/Downloads/*" "/cygdrive/d/Downloads/*" "/cygdrive/f/*");;
				"n"|"notes"		) declare -a files="${all_notes[@]}";;
				"d"|"download" 	) declare -a files=("$Universal_home/Downloads/*");;
				"ahk"			) declare -a files=("/cygdrive/c/cbn_gits/AHK/*");;
				"h"|"here"		) files=("$(pwd)");;
				"r"|"rhere" 	) files=("$(dirname "$(pwd)")"/*);;
			esac
			echo "searching in file $files"
			
			if [ -z "$3" ]; then		
				search_term="$2"
				
			else
				ext=".*\.\($2\)"
				case "$2" in
				"code"                 ) ext=".*\.\(txt\|py\|ini\|java\|ahk\|sh\|c\|cpp\)";;
				
			   "common"  ) ext=".*\.\(txt\)";;

				esac
				
				search_term="${@:3}"
			fi	
		
		fi	
		 
	# declare -a files=("$Universal_home/Downloads/notes.txt" "$Universal_home/Downloads/notes3.txt" "$Universal_home/Downloads/todo.txt" "$Universal_home/Downloads/work-todo.txt" "$Universal_home/Downloads/work-notes.txt" "$Universal_home/Downloads/todo.org" "$Universal_home/Downloads/clear these doubts.txt" )
		 
		echo $ext
		# echo "searching: $search_term"
		search_term=$(make_lookaround_search_term $search_term)
		echo "searching: $search_term"
		echo "$1"
		if [ "$1" = "here" ]; then
			echo "using here handler"
					grep -PrnIi $search_term --color=auto *.$2 /dev/null
					# grep -rPIi "$search_term" --color=auto "$files" |  remove_cygdrive;;
			else
				echo "using find cmd"
					for pattern in "${files[@]}"; do
							# echo "$pattern"
						  # echo "${pattern%/*}     ${pattern##*/}"
							lfind  "${pattern%/*}"  -iregex $ext -iname "${pattern##*/}" -type f -exec grep -PrnIi $search_term --color=auto {} /dev/null \;
					done
				# fi
		fi
	fi	
# lfind  $files  -iregex $ext -type f -exec grep -PrnIi $search_term --color=auto {} /dev/null \;


	# lfind  "$Universal_home"/Desktop/l* "$Universal_home"/Downloads/* /cygdrive/f/july\ 2/text/* /cygdrive/f/july\ 2/Projects/python_scripts  /cygdrive/d/*  -iregex ".*\.\(txt\|py\|ini\|java\|ahk\)" -type f -exec grep -PrnIi "$1"  --color=auto {} /dev/null \;
	
# By using /dev/null as an extra input file grep "thinks" it dealing with multiple files, but /dev/null is of course empty, so it will not show up in the match list
 }


# to use wildcard pattern files
# patterns=(-path "${files[0]}")
# for pattern in "${files[@]:0}"; do
	# patterns+=(-o -path "$pattern")
	# echo "$pattern"
	# echo "${pattern%/*}"
	# echo "${pattern##*/}"
# lfind "${pattern%/*}"   -type f -iname "${pattern##*/}" -exec grep -PrnIi rewa --color=auto {} /dev/null \;



function myallgrep() { 
	if [ -z "$1" ]; then
		echo "Usage: cibin grepp for text files"
	 else
	lfind  "$Universal_home"/Desktop/l* "$Universal_home"/Downloads/* /cygdrive/f/july\ 2/text/* /cygdrive/f/july\ 2/Projects/python_scripts  /cygdrive/d/*  -iregex ".*\.\(txt\|py\|ini\|java\|ahk\)" -type f -exec grep -PrnIi "$1"  --color=auto {} /dev/null \;
	 fi
 }

function mygrep() { 
	if [ -z "$1" ]; then
		# display usage if no parameters given
		echo "Usage: cibin grepp for text files"
	 else

	 grep -PrnIi "$1" --color=auto /cygdrive/f/july\ 2/text/* /cygdrive/f/july\ 2/Projects/python_scripts; 
	 fi
 }
 