function scrTextos(){
	switch npc_nome{
		case "professor1":
		
			ds_grid_add_text("AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoJogador, 0, "Sonic")
			ds_grid_add_text("AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoProfessor, 1, "Robotinic")
			ds_grid_add_text("Vamo lá entâo?",sRetratoJogador, 0, "Sonic")
				add_op("Primeira opção",  "resposta 1")
				add_op("Segunda opção",   "resposta 2")
				add_op("Terceira opção",  "resposta 3")
			break;
			
				case "resposta 1":
					ds_grid_add_text("AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoProfessor, 1, "Robotinic")
				break;
				case "resposta 2":
					ds_grid_add_text("OOOOOOOOOOOOOOOiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("OOOOOOOOOOOOOOOiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoProfessor, 1, "Robotinic")
				break;
				case "resposta 3":
					ds_grid_add_text("UUUUUUUUUUUUUUUUUUiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("uuuuuuuUUUUUUUUiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii AAAAAAAAAAAAAiii",sRetratoProfessor, 1, "Robotinic")
				break;
				
					
	}
}


function ds_grid_add_row(){
///arg ds_grid
	var grid = argument[0];
	ds_grid_resize( grid,ds_grid_width( grid),ds_grid_height( grid)+1);
	return(ds_grid_height( grid)-1);
}

function ds_grid_add_text(){
	///@arg Texto
	///@arg Retrato
	///@arg	Lado
	///@arg Nome
	
	var _grid = texto_grid
	var _y = ds_grid_add_row(_grid)
	
	_grid[# 0, _y] = argument[0]
	_grid[# 1, _y] = argument[1]
	_grid[# 2, _y] = argument[2]
	_grid[# 3, _y] = argument[3]
}

function add_op(texto, resposta){
	op[op_num] = texto
	op_resposta[op_num]= resposta
	
	op_num++
	
}