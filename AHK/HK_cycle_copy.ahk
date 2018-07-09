#SingleInstance Force
#include C:\cbn_gits\AHK\LIB\misc functions.ahk
#include C:\cbn_gits\AHK\LIB\cbn.ahk
#include C:\cbn_gits\AHK\LIB\contextmenu.ahk
Menu, Tray, Icon, Shell32.dll, 34

config=
(
copy as base64,paste here from clipb
copy_file_as_base64,paste_base64_asFile
,,,

2
Lwin
7000

)
cycle("<#=",config)



; settimer, test,1000

		; other pre actions
		; CSV with\without quotes
		; HK_msgs,HK_actions_onRelease, HK_actions_before_msg,HK_vars,
		; HK_input
		; globals HK_custom_disp_msg, HK_cycled_output, HK_cycle_id_count

		; %HK_cycle_id%_release_Pre_action get executed for all
		; correspondingly nth action gets executed for HK_actions_onRelease


		; global functions= HK_cycle_initialise


HK_cycle_list = OpenFavFolder_HK,copy_paste_base64_HK
loop,parse,HK_cycle_list,`,
	%a_loopfield% := 0
HK_cycle_abort_Cancel_key=$^k

$^k::
	HK_cycle_abort_onCancel_key(a_thishotkey)
Return


^i::
	HK_cycle_id = OpenFavFolder_HK
	if (!%HK_cycle_id%)
	{
		HK_msgs =C:\cbn,C:\cbn_gits\AHK\LIB
		HK_actions_onRelease=open_folder,open_folder
		HK_actions_before_msg= ; empty if not reqd. it modifies the global variable 'HK_custom_disp_msg' for truncated message preview and 'HK_cycled_output'
		extra_params= ,,,
		input_param= ; like selected text or sourcepath or clipb
		HK_cycle_tot_steps= 2 ; excluding cancel
		release_checking_key :="ctrl"
		idle_stop_after = 7000
		%HK_cycle_id%_release_Pre_action=path
		HK_cycle_id_count = %HK_cycle_id%_count
		HK_cycle_before_cycling()
	}
	HK_cycle_next( %HK_cycle_id%, %HK_cycle_id_count%, HK_cycle_tot_steps, HK_msgs, HK_actions_onRelease, extra_params, input_param, HK_cycle_id_action, idle_stop_after, HK_actions_before_msg)
	; keywait,i
return

path:
	; msgbox,%HK_cycle_id_count%
	c:= %HK_cycle_id_count%
	FileFullpath := HK_msgs%c%
return

open_folder:
	; msgbox,opening =%FileFullpath%=
	menuEvent_function("OpenIfFolder_SelectIfFile", FileFullpath)
return

copy:
	; clipboard := HK_cycled_output
	enterToSend_EscToCancel_ElseCopy(HK_cycled_output)
return

test:
tooltip,a %HK_cycle_id% b %HK_cycle_id_action% c %HK_cycle_id_count%
return

b()
{
global
; <#=:: ; copy_paste_base64_HK
	HK_cycle_id = copy_paste_base64_HK
	if (!%HK_cycle_id%)
	{
		HK_cycle_id_count = %HK_cycle_id%_count
		HK_cycle_before_cycling()
	}
	HK_cycle_next( %HK_cycle_id%, %HK_cycle_id_count%, HK_cycle_tot_steps, HK_msgs, HK_actions_onRelease, extra_params, input_param, HK_cycle_id_action, idle_stop_after, HK_actions_before_msg)
	; keywait,i
}
return


/*
		HK_msgs =copy as base64,paste here from clipb
		HK_actions_onRelease=copy_file_as_base64,paste_base64_asFile
		HK_actions_before_msg= ;
		extra_params= ,,,
		input_param=
		HK_cycle_tot_steps= 2
		release_checking_key ="Lwin"
		idle_stop_after = 7000
		%HK_cycle_id%_release_Pre_action=
*/



copy_file_as_base64: ; copy as base64
	FileFullpathname := get_selected_filepath()
	copy_file_as_base64(FileFullpathname)
Return

paste_base64_asFile:	; paste base64 data here
	sourcepath := get_parent_filepath()
	paste_base64_asFile(sourcepath)
Return

copy_file_as_base64(FileFullpathname)
	{
		FileGetSize, Size, %FileFullpathname%
		FileRead, Bin, *c %FileFullpathname%
		Base64enc( PNGDATA, Bin, Size )
		Clipboard := FileFullpathname . "`n" . PNGDATA
		len := strlen(clipboard)
		stringleft,a,clipboard,400
		settimer,removetooltip,1500
		tooltip,length=%len%`n%a%
	}


paste_base64_asFile(sourcepath)
	{
		; clipboard content first line is fullpathname of copied file
		FullDATA:=clipboard
		DATA =
		loop,parse,FullDATA,`n,`r
		{
			if a_index =1
				File := a_loopfield
			else
				DATA .= a_loopfield

		}
		splitpath,File,Filename
		target_file := sourcepath . "\" . Filename
		target_file := get_next_filename(target_file,10)
		if (!target_File)
		{
			settimer,removetooltip,1500
			tooltip,error
			return
		}
		Bytes := Base64Dec( BIN, DATA )
		VarZ_Save( BIN, Bytes, target_file )
		VarSetcapacity( DATA, 0 )
		settimer,removetooltip,1500
		tooltip,%target_file%
	}
