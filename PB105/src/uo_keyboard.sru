$PBExportHeader$uo_keyboard.sru
forward
global type uo_keyboard from datawindow
end type
end forward

global type uo_keyboard from datawindow
integer width = 2327
integer height = 700
string title = "none"
string dataobject = "d_keyboard"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
event ue_pushkey ( string as_keyname,  string as_cxm )
end type
global uo_keyboard uo_keyboard

on uo_keyboard.create
end on

on uo_keyboard.destroy
end on

event clicked;If Left(String(dwo.Name),2) <> 't_' Then Return
Choose Case dwo.Name
	Case 't_disp'
	Case 't_clear'
		This.SetRedraw(False)
		This.Object.t_disp.Text = ''
		This.Object.rr_select.X = 5000
		This.Object.rr_select.Y = 5000
		This.SetRedraw(True)
		
		Event ue_pushkey("t_clear",Right(String(This.Object.t_disp.Text),Len(String(This.Object.t_disp.Text)) - 8))
		
	Case 't_back'
		//If Len(String(This.Object.t_disp.Text)) > 8 Then
			This.Object.t_disp.Text = Left(This.Object.t_disp.Text, &
				Len(String(This.Object.t_disp.Text)) - 1 )
			Event ue_pushkey("t_back",Right(String(This.Object.t_disp.Text),Len(String(This.Object.t_disp.Text)) - 8))
		//End If
	Case 't_pageup'
		Event ue_pushkey("t_pageup",Right(String(This.Object.t_disp.Text),Len(String(This.Object.t_disp.Text)) - 8))
	Case 't_pagedown'
		Event ue_pushkey("t_pagedown",Right(String(This.Object.t_disp.Text),Len(String(This.Object.t_disp.Text)) - 8))
	Case Else
		This.SetRedraw(False)
		This.Object.t_disp.Text = This.Object.t_disp.Text + Upper(Right(String(dwo.Name),1))
		
		This.Object.rr_select.X = Long(Describe(String(dwo.Name) + ".X")) - 11
		This.Object.rr_select.Y = Long(Describe(String(dwo.Name) + ".Y")) - 11
		This.SetRedraw(True)
		
		Event ue_pushkey("letter",Right(String(This.Object.t_disp.Text),Len(String(This.Object.t_disp.Text)) - 8))
		
End Choose



end event

