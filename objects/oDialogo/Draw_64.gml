guiX=display_get_gui_width()
guiY=display_get_gui_height()

xx= 0
yy= guiY-100

c=c_black

draw_set_font(fnt_dialogo)
draw_rectangle_color(xx,yy,guiX,guiY,c,c,c,c,false)
draw_text_ext(xx+8,yy+8,texto[0],16,guiX-16)

