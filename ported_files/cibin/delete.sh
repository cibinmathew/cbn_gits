declare -a all_notes=("$Universal_home/Downloads/notes.txt" "$Universal_home/Downloads/notes3.txt" "$Universal_home/Downloads/todo.txt" "$Universal_home/Downloads/work-todo.txt" "$Universal_home/Downloads/work-notes.txt" "$Universal_home/Downloads/todo.org" "$Universal_home/Downloads/clear these doubts.txt" )


# declare -a files="${all_notes[@]}"
# files="${all_notes[@]}"
files=("${all_notes[@]}")
for pattern in "${files[@]}"; do
	echo "$pattern"
	
	echo "   \n"
done