/// @description Insert description here
// You can write your code in this editor/*
/*if !global.dialogo && !place_meeting(x,y,oJogador){
	x+=xspeed
}*/
if (!global.dialogo){
	if (place_meeting(x + xspeed, y, oJogador)) {
	    while (!place_meeting(x + sign(xspeed), y, oJogador)) {
	        x += sign(xspeed);
	    }
	}
	else
		x+=xspeed
}



