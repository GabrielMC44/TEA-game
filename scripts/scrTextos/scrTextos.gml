function scrTextos(){
	switch npc_nome{
		case "professor1":
		
			ds_grid_add_text("Boa tarde professor!",sRetratoJogador, 0, "Sonic")
			ds_grid_add_text("Boa tarde Gabriel, já finalizou o protótipo do jogo de conscientização sobre o TEA? Precisamos de algumas mecânicas funcionais para a próxima semana.",sRetratoProfessor, 1, "Robotinic")
				add_op("Não, o protótipo ainda não está finalizado...",  "resposta 1")
				add_op("Sim, já temos um protótipo com mecânicas funcionais.",   "resposta 2")
			break;
			
				case "resposta 1":
					ds_grid_add_text("Infelizmente ainda não conseguimos desenvolver um protótipo funcional, mas estamos trabalhando.",sRetratoJogador, 0, "Aluno")
					ds_grid_add_text("Certo, vamos apressar e tentar finalizar algo até semana que vem.",sRetratoProfessor, 1, "Professor")
					ds_grid_add_text("Okay, daremos o nosso máximo.",sRetratoJogador, 0, "Aluno")
				break;
				case "resposta 2":
					ds_grid_add_text("Conseguimos implmentar algumas funções.",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("Certo, quais mecênicas vocês já tem?",sRetratoProfessor, 1, "Robotinic")
					ds_grid_add_text("Mecânicas de movimentação do personagem e colisão com o cenário, objetos, NPCs e etc.",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("Além disso também temos a mecânica de diálogos, que será a base do nosso jogo.",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("O personagem proncipal consegue consversar com o NPCs além de ter opções de diálogo.",sRetratoJogador, 0, "Sonic")
					ds_grid_add_text("Ótimo, mas ainda temos muito trabalho pela frente. Aperfeiçoamento das mecânicas, além de roteiro, arte, customização do personagem, etc.",sRetratoProfessor, 1, "Robotinic")
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