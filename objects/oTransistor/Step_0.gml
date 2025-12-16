//meio das animações pause e despausar o jogo
if(image_index>5){
	global.pause = true;
} else {
	global.pause = false;
}

//ao finalizar animação se destroi
if (room==newRoomIndex && image_index<1) {
	instance_destroy();
}