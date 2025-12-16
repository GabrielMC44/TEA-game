if place_meeting(x,y, oJogador) and !instance_exists(oTransistor) {
	var transition = instance_create_depth(0,0,-9999,oTransistor);
	transition.newRoomX = newRoomX;
	transition.newRoomY = newRoomY;
	transition.newRoomIndex = newRoomIndex;
	transition.newSpriteIndex = newSpriteIndex;
}