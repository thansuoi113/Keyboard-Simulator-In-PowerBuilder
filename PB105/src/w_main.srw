$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_2 from statictext within w_main
end type
type st_1 from statictext within w_main
end type
type sle_cxm from singlelineedit within w_main
end type
type sle_keyname from singlelineedit within w_main
end type
type dw_1 from uo_keyboard within w_main
end type
end forward

global type w_main from window
integer width = 2491
integer height = 1076
boolean titlebar = true
string title = "Keyboard"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_2 st_2
st_1 st_1
sle_cxm sle_cxm
sle_keyname sle_keyname
dw_1 dw_1
end type
global w_main w_main

on w_main.create
this.st_2=create st_2
this.st_1=create st_1
this.sle_cxm=create sle_cxm
this.sle_keyname=create sle_keyname
this.dw_1=create dw_1
this.Control[]={this.st_2,&
this.st_1,&
this.sle_cxm,&
this.sle_keyname,&
this.dw_1}
end on

on w_main.destroy
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_cxm)
destroy(this.sle_keyname)
destroy(this.dw_1)
end on

type st_2 from statictext within w_main
boolean visible = false
integer x = 805
integer y = 64
integer width = 379
integer height = 96
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Key Text:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_main
integer x = 73
integer y = 96
integer width = 329
integer height = 96
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Control:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_cxm from singlelineedit within w_main
boolean visible = false
integer x = 1207
integer y = 64
integer width = 1170
integer height = 92
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_keyname from singlelineedit within w_main
integer x = 402
integer y = 96
integer width = 549
integer height = 90
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type dw_1 from uo_keyboard within w_main
integer x = 73
integer y = 224
integer taborder = 10
boolean border = false
borderstyle borderstyle = styleraised!
end type

event ue_pushkey;call super::ue_pushkey;sle_keyname.text = as_keyname
//sle_cxm.text = as_cxm
end event

