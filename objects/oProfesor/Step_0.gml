/// @description Insert description here
// You can write your code in this editor/*
/*if !global.dialogo && !place_meeting(x,y,oJogador){
	x+=xspeed
}*/
if global.dialogo || global.pause {
	path_speed = 0;
	image_speed = 0;
	exit;
} else {
	image_speed = 1;
}
/*
if (place_meeting(x + xspeed, y, oJogador)) {
	while (!place_meeting(x + sign(xspeed), y, oJogador)) {
	x += sign(xspeed);
		}
	}
else*/

if (!path_running) {
	path_start(path, xspeed, path_end_action, 0);
	path_running = true;
}
path_direction =180
// Calcula a posição do próximo frame
var _next_x = x + lengthdir_x(path_speed, path_direction);
var _next_y = y + lengthdir_y(path_speed, path_direction);

// Se a colisão com oColisor for iminente
if (place_meeting(_next_x, _next_y, oColisor)) {
	path_speed = 0; // Pausa o path
} 
// Se não houver colisão E o path estiver pausado
else if (path_speed == 0) { 
	path_speed = xspeed; // Retoma o path
}