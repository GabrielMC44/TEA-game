if inicializar == true {

	guiX=display_get_gui_width()
	guiY=display_get_gui_height()

	xx= 0
	yy= guiY-100

	c=c_black
	
	texto = string_copy(texto_grid[# Infos.Texto, pagina], 0, caractere)

	sprite=texto_grid[# Infos.Retrato, pagina]

	draw_set_font(fnt_dialogo)


	//Lado esquerdo
	if texto_grid[# Infos.Lado, pagina] == 0{
	draw_rectangle_color(xx+80,yy,guiX,guiY,c,c,c,c,false)
	draw_text_ext(xx+105,yy+8,texto,16,guiX-106)
	draw_sprite_ext(sprite,0,48,guiY,1.8,1.8,0,c_white,1)
	}

	//Lado direito
	else{
	draw_rectangle_color(xx,yy,guiX-60,guiY,c,c,c,c,false)
	draw_text_ext(xx+8,yy+8,texto,16,guiX-106)
	draw_sprite_ext(sprite,0,guiX-46,guiY,2,2,0,c_white,1)
	}
	
	if op_draw {
		opx = xx + 32
		opy = yy - 40
		opsep = 30
		opborda = 8
		
		op_selecionada += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("Ss"))
		op_selecionada = clamp(op_selecionada,0,op_num-1)
		for (i=0; i < op_num; i++){
			stringW = string_width(op[i])
			draw_sprite_ext(sFundoOp, 0 ,opx, opy-(opsep * i), (stringW + opborda * 2)/16, 1, 0, c_white, 1)
			draw_text(opx+opborda,opy-(opsep * i),op[i])
			
			if op_selecionada == i {
				draw_sprite(sSeletor , 0, xx + 24 , opy - (opsep * i)+8)
			}
		}
		
		if global.tecla{
			var _dialogo=instance_create_layer(x,y,"Dialogos",oDialogo)
			_dialogo.npc_nome=op_resposta[op_selecionada]
			
			instance_destroy()
		}
	}
}