// Movimentação básica

cima=keyboard_check(ord("W")) || keyboard_check(vk_up)
esquerda=keyboard_check(ord("A"))|| keyboard_check(vk_left)
baixo=keyboard_check(ord("S"))|| keyboard_check(vk_down)
direita=keyboard_check(ord("D"))|| keyboard_check(vk_right)

press=  cima - baixo != 0 || esquerda - direita != 0

dir= point_direction(0,0,direita-esquerda,cima-baixo)

velX=lengthdir_x(veloc * press, dir)
velY=lengthdir_y(veloc * press, dir)

//colisão
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
		sprite_index=sJogadorAndandoCosta
		image_xscale=-1
	}
	if direita{
		sprite_index=sJogadorAndandoCosta
		image_xscale=1
	}
	if cima{
		lastdir=1
		sprite_index=sJogadorAndandoCosta
	}
	if baixo{
		lastdir=0
		sprite_index=sJogadorAndandoCosta
	}	
}
else if lastdir
	sprite_index=sJogadorParadoCosta
	else
	sprite_index=sJogadorParadoFrente

	

























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
	
	