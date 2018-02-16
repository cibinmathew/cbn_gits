#SingleInstance force
menu, Tray, Icon, Shell32.dll, 68
SetWorkingDir %A_ScriptDir%
#include C:\cbn_gits\AHK\LIB\cbn.ahk
#include C:\cbn_gits\AHK\LIB\misc functions.ahk
#include C:\cbn_gits\AHK\LIB\emacs_functions.ahk
groups1=compact,remove blanks,lead/trail
groups1preview=fav_compact,apply_regex,apply_regex
groups1action=copy_enterToSend,copy_enterToSend,copy_enterToSend
groups1RegMatch:="na,m)^(?:[\t ]*(?:\r?\n|\r))+,m`n)(^[ \t]+|[ \t]+$)"
groups1RegReplace:="sss,,"

groups2=clean xtras,white spaces,quotes and spaces,special symbols
groups2preview=apply_regex,apply_regex,apply_regex,apply_regex
groups2action=copy_enterToSend,copy_enterToSend,copy_enterToSend,copy_enterToSend
groups2RegMatch:="m`n)[`%\\\.\*?+[{|()^$""],m`n)\s,m`n)[\s""],[`%\\\.\*?+[{}|()^$""]"
groups2RegReplace:=",,,"

groups3=lines to spaces,to null,to comma,colon
groups3preview=apply_regex_lines,apply_regex_lines,apply_regex_lines,apply_regex_lines
groups3action=copy_enterToSend, copy_enterToSend,copy_enterToSend,copy_enterToSend
groups3RegMatch:="m)\R,m)\R,m)\R,m)\R"
groups3RegReplace:=" ,,,:"

groups4=specials remove not in brackets,remove in brackets,csv escapes
groups4preview=apply_regex,apply_regex
groups4action=copy_enterToSend, copy_enterToSend
groups4RegMatch:="[^()]*+(\((?:[^()]++|(?1))*\))[^()]*+,\([^)]*\)"
groups4RegReplace:="$1,"

groups5=Favs 1, fav2,Fav3
groups5preview=fav_hard_compact, apply_regex
groups5action=copy_enterToSend, copy_enterToSend
groups5RegMatch=,
groups5RegReplace=,

max_groups:=5
loop,%max_groups%
{
	stringsplit,groups%a_index%preview,groups%a_index%preview,`,
	stringsplit,groups%a_index%action,groups%a_index%action,`,
	stringsplit,groups%a_index%RegMatch,groups%a_index%RegMatch,`,
	stringsplit,groups%a_index%RegReplace,groups%a_index%RegReplace,`,
	group_no:=a_index
	format_group%group_no%_0_msg=Cancel
	format_group%group_no%_0_preview=nil
	format_group%group_no%_0_action=nil
	loop,parse,groups%a_index%,`,
	{
		format_group%group_no%_%a_index%_msg :=a_loopfield
		format_group%group_no%_%a_index%_preview 	:= (groups%group_no%preview%a_index%<>"")? (groups%group_no%preview%a_index%) : ("NoPreview")
		format_group%group_no%_%a_index%_action 	:= (groups%group_no%action%a_index%<>"")? (groups%group_no%action%a_index%) : ("nil")
		format_group%group_no%_%a_index%_RegMatch 	:= (groups%group_no%RegMatch%a_index%<>"")? (groups%group_no%RegMatch%a_index%) : ("")
		format_group%group_no%_%a_index%_RegReplace := (groups%group_no%RegReplace%a_index%<>"")? (groups%group_no%RegReplace%a_index%) : ("")
		; msgbox,% format_group%group_no%_%a_index%_RegMatch . "=>|" . format_group%group_no%_%a_index%_RegReplace . "|"
		format_group%group_no%_max:=a_index
	}
}
text_formatter_active:=0
return

<^+x:: ; smart text clean
	if (strip_text_cycle_active)
	{
		smart_strip_text("left",1)
		return
	}
	else if(text_formatter_active)
	{	
		if (format_group>3)
			format_group:=0
		else
			format_group++
		cycle_count:=1
		goto,show_next
		return
	}
	else
	{
		format_group:=1
		cycle_count:=1
		; selText=`t#include "C:\cbn_gits\AHK\LIB\(misc functions.ahk)"`n`t#include "C:\(cbn  functions.ahk)"
		selText:=Get_Selected_Text()
		; msgbox,%selText%
		text_formatter_active:=1
		goto,show_next
	} 
return

^+z::	; na
	if (strip_text_cycle_active)
	{
		smart_strip_text("left",0)
	}
	else if (text_formatter_active)
	{	 
		(format_group!=5) ?(cycle_count:=0):
		format_group:=5
	}
return
	
<^+c:: ; smart text clean
	if (text_formatter_active)
	{
		; cycle_count++
		if (cycle_count > format_group%format_group%_max-1)
			cycle_count:=0
		else
			cycle_count++	
		goto,show_next
	}
	else if (strip_text_cycle_active)
	{
		tooltip,trying another smart delimiter
		settimer,removetooltip,2000
	}
	else	; activate strip_text_cycle_active
	{
		; selText =`t#include "C:\cbn_gits\AHK\LIB\(misc functions.ahk)"`n`t#include "C:\(cbn  functions.ahk)"
		selText := Get_Selected_Text()
		strip_text_cycle_active:=1
		settimer,strip_text_cycle_active,70
		tooltip,strip_text_cycle_active
		settimer,removetooltip,3500
		hotkey,^+v,on
		hotkey,^+b,on
		hotkey,^+z,on
		
	}
return

show_next:

	preview_text=
	if ( (format_group!=0) AND (cycle_count!=0) )	; not cancel
	{
		preview:=format_group%format_group%_%cycle_count%_preview
		; tooltip,format_group%format_group%_%cycle_count%_preview %preview%
		; sleep,500
		gosub,%preview%
		preview_text:=truncated_text(output,520)
	}
	msg:= format_group . "." cycle_count . " " . format_group%format_group%_%cycle_count%_msg
	tooltip,%msg%`n`n%preview_text%
	settimer,removetooltip,-3500
	; hotkey,^q,on
	setTimer,text_formatter_active,70	
return

text_formatter_active:
	GetKeyState , state , CTRL
	If ( state = "U" )
	{
		if ( (format_group!=0) AND (cycle_count!=0) )	; not cancel
		{
			a:=format_group . "." cycle_count . " " . format_group%format_group%_%cycle_count%_msg
			action:=format_group%format_group%_%cycle_count%_action					
			; msgbox,action= %action%  %a%	
			gosub,%action%
		}
		gosub,cancel_text_formatter_active
	}
return

cancel_text_formatter_active:
	settimer,text_formatter_active,off
	text_formatter_active:=0
	hotkey,^q,off
	hotkey,^+z,off
	hotkey,^+v,off
	hotkey,^+b,off
return


strip_text_cycle_active:
	GetKeyState , state , CTRL
	; tooltip,%state%
	If ( state = "U" )
	{		
		tooltip,cancelled
		settimer,removetooltip,800
		gosub,cancel_strip_text_cycle_active
		gosub,copy_enterToSend
	}
return

cancel_strip_text_cycle_active:
	settimer,strip_text_cycle_active,off
	strip_text_cycle_active:=0
	hotkey,^q,off
	hotkey,^+v,off
	hotkey,^+b,off	
return


removetooltip:
	settimer ,removetooltip,off
	tooltip
return



$^q::	;	na
if  (text_formatter_active) 
{
	gosub,cancel_text_formatter_active	
	hotkey,^q,off
	settimer,removetooltip,-200
	tooltip,cancelled
}
else if  (strip_text_cycle_active) 
{
	gosub,cancel_strip_text_cycle_active
	settimer,removetooltip,-200
	tooltip,cancelled
}
else
{
	send ^q
}
Return

NoPreview:
	preview_text=No preview
return
Preview:
	preview_text=waiting for preview
return

nil:
	tooltip,nil
	setTimer,removetooltip,500
return

apply_regex:
	regMatch:=format_group%format_group%_%cycle_count%_RegMatch
	regReplace:=format_group%format_group%_%cycle_count%_RegReplace
	output := RegExReplace(selText, regMatch,regReplace )
		if cycle_count=4
		; msgbox,%selText%`n%output%
	msgbox,%RegMatch% => %regReplace%`n=%selText%=`n=%output%=
	; sleep,1500
	
return

apply_regex_lines:
/*	no_of_lines:=no_of_lines(selText,1)
	if (no_of_lines<2)
	{
		output:= RegExReplace(Contents, " ","`n")
	}
	else
	{
		output:= RegExReplace(Contents, "m)\R"," ")
	}
*/
	regMatch:=format_group%format_group%_%cycle_count%_RegMatch
	regReplace:=format_group%format_group%_%cycle_count%_RegReplace
	output := RegExReplace(selText, regMatch,regReplace )
	; tooltip,%RegMatch% => %regReplace%`n%selText%`n%output%
	; sleep,1500
return

copy_enterToSend:	
	tooltip,%msg%`nENTER to SEND`n%preview_text%`ncopied
	settimer,removetooltip,-3000
	Input, UserInput, T3 L1 C, {enter}.{esc}{tab}
	tooltip,
	If InStr(ErrorLevel, "EndKey:enter")
	{	
		clipboard:=output
		; send, ^v
		send_key_emacs_or_after_translatingTo_normal_ifNot_emacseditor("C-y")
	}
	
	else If InStr(ErrorLevel, "EndKey:esc")
	{	
		settimer,removetooltip,-150
		tooltip,cancelled
		
	}
	else
		clipboard:=output
return


fav_compact:	
	output := RegExReplace(selText, "m`n)(^[ \t]+|[ \t]+$)" )
	output := RegExReplace(output, "m)^(?:[\t ]*(?:\r?\n|\r))+" ) ; blank
return


fav_hard_compact:	
	output := RegExReplace(selText, "m`n)(^[ \t]+|[ \t]+$)" )
	output := RegExReplace(output, "m`n)(^[ \t]+|[ \t]+$)" ) ; lead/trail
	output := RegExReplace(output, "m`n)[`%\\\.\*?+[{}|()^$""]" ) ; symbols
	output := RegExReplace(output, "m)^(?:[\t ]*(?:\r?\n|\r))+" ) ; blank
return

^+v::	; na
msgbox
	if (strip_text_cycle_active)
	{
		smart_strip_text("right",1)
	}
return
	
^+b::	; na
	if (strip_text_cycle_active)
	{
		smart_strip_text("right",0)
	}
return

smart_strip_text(side="left",smart=1)
{
	global selText,output,preview_text,msg
	output =
	; msgbox, %selText%
	if ( smart=0 )
	{
		loop, parse, selText,`n,`r
		{
			; msgbox, %a%
			if (side="left" )
				StringTrimLeft,a, A_LoopField ,1
			else
				StringTrimRight,a,A_LoopField ,1
			output .= a . "`n"
		}
	}
	else
	{
		output:= selText
	}
	; msgbox,%output%
	StringTrimright, output,output ,1
	selText :=output
	sleep,10
	preview_text:=truncated_text(output,520)
	msg=smart_strip_text %side% %smart%
	tooltip,%msg%`n%preview_text%
	settimer,removetooltip,-3000
	return
}