if inicializar == false{
	scrTextos();
	inicializar= true;
}

if mouse_check_button_pressed(mb_left){
//if keyboard_check(ord("E")){
	if pagina < array_length(texto)-1{
		pagina++;
	}else{
		global.dialogo=false;
		instance_destroy();
	}
}