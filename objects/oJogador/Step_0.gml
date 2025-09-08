// Movimentação básica

cima=keyboard_check(ord("W")) || keyboard_check(vk_up)
esquerda=keyboard_check(ord("A"))|| keyboard_check(vk_left)
baixo=keyboard_check(ord("S"))|| keyboard_check(vk_down)
direita=keyboard_check(ord("D"))|| keyboard_check(vk_right)

press=  cima - baixo != 0 || esquerda - direita != 0

dir= point_direction(0,0,direita-esquerda,cima-baixo)

velX=lengthdir_x(veloc * press, dir)
velY=lengthdir_y(veloc * press, dir)
//if !global.dialogo{
//colisão

if (!global.dialogo){
if (place_meeting(x + velX, y, oColisor)) {
    while (!place_meeting(x + sign(velX), y, oColisor)) {
        x += sign(velX);
    }
    velX = 0;
}
x += velX;

if (place_meeting(x, y - velY, oColisor)) {
    while (!place_meeting(x, y - sign(velY), oColisor)) {
        y -= sign(velY);
    }
    velY = 0;
}
y -= velY;


// Sprite
if press{
	if esquerda{
		sprite_index=sJogadorAndandoLado
		image_xscale=-2
	}
	if direita{
		sprite_index=sJogadorAndandoLado
		image_xscale=2
	}
	if cima{
		lastdir=1
		sprite_index=sJogadorAndandoCosta_
	}
	if baixo{
		lastdir=0
		sprite_index=sJogadorAndandoFrente_
	}	
}

else if lastdir
	sprite_index=sJogadorParadoCosta_
else
	sprite_index=sJogadorParadoLado
}
else if lastdir
	sprite_index=sJogadorParadoCosta_
else
	sprite_index=sJogadorParadoLado
	

//Diálogo

if distance_to_object(oNpc_Parentet)<=40{
	if (global.tecla && !global.dialogo ){
		
		var _npc=instance_nearest(x,y,oNpc_Parentet)
		var _dialogo=instance_create_layer(x,y,"Dialogos",oDialogo)
		_dialogo.npc_nome=_npc.nome
	}
}























/*if keyboard_check(vk_up)
	y-=2

if keyboard_check(vk_down)
	y+=2

if keyboard_check(vk_left){
	x-=2
	image_xscale=1
}
if keyboard_check(vk_right){
	x+=2
	image_xscale=-1
	}*/
	
	