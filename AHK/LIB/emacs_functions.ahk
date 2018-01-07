
; 1. achieve functionality
	; * translate to normal
	; * pass through
; 2. pass thru
pass_through_keys(HK)
	{
	If (is_in_an_emacs_window())
	{

		; send_key(HK)

	}
	else
	{
		; HK := translate_emacsCombo_to_Normal_combo_and_send(HK)
	}
		send_key(HK)

	; msgbox,%HK%
}

send_key_emacs_or_after_translatingTo_normal_ifNot_emacseditor(HK)
{
; input is normal keycombo like c-v for paste
	If (is_in_an_emacs_window())
	{

		send_key(HK)

	}
	else
	{
		HK := translate_emacsCombo_to_Normal_combo_and_send(HK)
	}

	; msgbox,%HK%
}



encode_key_combo(HK)
{
	if regexmatch(HK,"^space & .*")
	{

		StringtrimLeft, HK, HK, 8
		If GetKeyState("shift")
		{

			; msgbox, adf
			HK = Spc-Shift-%HK%
			; send ^+f
		}
		else If GetKeyState("alt")
		{
			HK = Spc-Alt-%HK%
		}
		else
			HK = Spc-%HK%
	}
	else if regexmatch(HK,"^!.*")
	{
		StringtrimLeft, HK, HK, 1
		HK = A-%HK%
	}
	else if regexmatch(HK,"^\^.*")
	{
		StringtrimLeft, HK, HK, 1
		HK = C-%HK%
	}
	else if regexmatch(HK,"^\+.*")
	{
		StringtrimLeft, HK, HK, 1
		HK = S-%HK%
	}
	StringReplace,HK,HK,.,Dot
	StringReplace,HK,HK,`,,Comma
	StringReplace,HK,HK,/,Forward_slash

	StringReplace,HK,HK,`;,semi_colon
	StringReplace,HK,HK,',Single_quote
	StringReplace,HK,HK,--,-minus
	StringReplace,HK,HK,=,equal
	return HK
}

decode_key_combo(HK)
{
	StringReplace,HK,HK,Dot,.
	StringReplace,HK,HK,Comma,`,
	StringReplace,HK,HK,Forward_slash,/

	StringReplace,HK,HK,semi_colon,`;
	StringReplace,HK,HK,Single_quote,'
	StringReplace,HK,HK,minus,-
	StringReplace,HK,HK,equal,=
	return HK
}

send_key(HK)
{
		; msgbox,z%HK%
	HK := decode_key_combo(HK)
	if regexmatch(HK,"^C-S-f\d")
	{
		stringtrimleft,key,HK,4
		key={%key%}
		modifier=^+
	}
	else if regexmatch(HK,"^C-S-.")
	{
		stringtrimleft,key,HK,4
		modifier=^+
	}
	else if regexmatch(HK,"^C-A-.")
	{
		stringtrimleft,key,HK,4
		modifier=^!
	}
	else if regexmatch(HK,"^C-f\d")
	{
		stringtrimleft,key,HK,2
		key={%key%}
		modifier=^
	}
	else if regexmatch(HK,"^C-.")
	{
		; msgbox,%HK%
		stringtrimleft,key,HK,2
		modifier=^
	}
	else if regexmatch(HK,"^A-.")
	{
		stringtrimleft,key,HK,2
		modifier=!
	}
	else if regexmatch(HK,"^S-.")
	{
		stringtrimleft,key,HK,2
		modifier=+
	}
	else
	{
		key := HK
		modifier=
	}

	; msgbox,m %modifier% k%key%
	; msgbox,%modifier%%key%
	send,%modifier%%key%
	return
}


translate_emacsCombo_to_Normal_combo_and_send(HK)
{
	emacs_mapping_C_0=C-0
	emacs_mapping_C_1=C-1
	emacs_mapping_C_2=C-2
	emacs_mapping_C_3=C-3
	emacs_mapping_C_4=C-4
	emacs_mapping_C_5=C-5
	emacs_mapping_C_6=C-6
	emacs_mapping_C_7=C-7
	emacs_mapping_C_8=C-8
	emacs_mapping_C_9=C-9

	emacs_mapping_C_f1=C-f1
	emacs_mapping_C_f2=C-f2
	emacs_mapping_C_f3=C-f3
	emacs_mapping_C_f4=C-f4
	emacs_mapping_C_f5=C-f5
	emacs_mapping_C_f6=C-f6
	emacs_mapping_C_f7=C-f7
	emacs_mapping_C_f8=C-f8
	emacs_mapping_C_f9=C-f9
	emacs_mapping_C_f10=C-f10
	emacs_mapping_C_f11=C-f11
	emacs_mapping_C_f12=C-f12

	emacs_mapping_C_a={Home}
	emacs_mapping_C_b={Left}
	emacs_mapping_C_c=C-c
	emacs_mapping_C_d=key_combo_C_d
	emacs_mapping_C_e=key_combo_C_d
	emacs_mapping_C_f={Right}
	emacs_mapping_C_g=key_combo_C_g
	emacs_mapping_C_h={Backspace}
	emacs_mapping_C_i=C-i
	emacs_mapping_C_j=C-j
	emacs_mapping_C_k=C-k
	emacs_mapping_C_l=C-l
	emacs_mapping_C_m=C-m
	emacs_mapping_C_n={Down}
	emacs_mapping_C_o=C-o
	emacs_mapping_C_p={Up}
	emacs_mapping_C_q=C-q
	emacs_mapping_C_r=C-r
	emacs_mapping_C_s=key_combo_C_s
	emacs_mapping_C_t=C-t
	emacs_mapping_C_u=C-u
	emacs_mapping_C_v={PgDn}
	emacs_mapping_C_w=C-x
	emacs_mapping_C_x=key_combo_C_x
	emacs_mapping_C_y=C-v
	emacs_mapping_C_z=C-z

	emacs_mapping_C_Comma=C-,
	emacs_mapping_C_Forward_slash=key_combo_C_Forward_slash
	emacs_mapping_C_Dot=C-.
	emacs_mapping_C_minus=C--
	emacs_mapping_C_equal=C-=
	emacs_mapping_C_semi_colon=C-`;
	emacs_mapping_C_Single_quote=C-'

	emacs_mapping_A_b=key_combo_A_b
	emacs_mapping_A_d=key_combo_A_d
	emacs_mapping_A_f=key_combo_A_f
	emacs_mapping_A_w=C-c
	emacs_mapping_A_v={PgUp}
	emacs_mapping_A_Dot=key_combo_A_Dot
	emacs_mapping_A_Comma=key_combo_A_Comma
	emacs_mapping_A_Backspace=key_combo_A_Backspace

	key_combos_map_to_function=C-x,C-s,C-g,C-d,C-e,A-Backspace,A-f,A-Comma,A-Dot,A-d,A-b,C-Forward_slash
	if HK in %key_combos_map_to_function%
		maps_to_function := 1
	else
		maps_to_function := 0

		; msgbox,a%HK%
	StringReplace, HK, HK,-,_, All
	; msgbox,%HK% %maps_to_function%


	if (maps_to_function)
	{
	; msgbox
		gosub, key_combo_%HK%
	}
	else
	{
	; msgbox,%HK%
		stringleft,key,HK,4
	; msgbox,%key%

		if ((key<>"C_S_") and (key<>"C_A_"))
			HK:= emacs_mapping_%HK%
		else
		{
			StringReplace, HK, HK,C_f,C-f, All
			StringReplace, HK, HK,C_S_,C-S-, All
			StringReplace, HK, HK,C_A_,C-A-, All
		}
			; stringtrimleft,HK,HK,4

	; msgbox,%HK%
		send_key(HK)
	}
	return HK

}

is_in_an_emacs_window()
{
	If  WinActive("ahk_exe emacs.exe") or WinActive("ahk_exe VirtualBox.exe")
     or WinActive("ahk_exe javaw.exe")  Or WinActive("ahk_exe eclipse.exe") Or WinActive("ahk_exe sublime_text.exe")  Or WinActive("ahk_exe firefox.exe")
		return true
	else
		return false
}

trigger_if_triggered_by_emacs_script_else_proceed(key_to_check)
{
	if !(GetKeyState(key_to_check,"P"))
	{
		stringreplace,HK, a_thishotkey,$
		stringreplace,HK, HK,>,,all
		stringreplace,HK, HK,<,,all
		send, %HK%
		return 1
	}
	else
	{
		; msgbox
		return 0
	}
}