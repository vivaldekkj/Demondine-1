/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))

velh = (right - left) * vel;

if place_meeting(x + velh, y, obj_parede) {
	while !place_meeting(x + sign(velh), y, obj_parede) {
		x += sign(velh)
	}
	velh = 0;
}


x += velh

velv = (down - up) * vel;

if place_meeting(x, y + velv, obj_parede) {
	while !place_meeting(x, y + sign(velv), obj_parede) {
		y += sign(velv)
	}
	velv = 0;
}

y += velv


if keyboard_check(ord("D")) {
	sprite_index = spr_girafa_direita
	dir = 0;
	
} else if keyboard_check(ord("A")) {
	sprite_index = spr_girafa_esquerda	
	dir = 1;
}

if dir == 0 and (up or down) {
	sprite_index = spr_girafa_direita
} else if dir == 1 and (up or down) {
	sprite_index = spr_girafa_esquerda

}






if (dir == 0 and !right and !down and !up) {
	sprite_index = spr_respirando_direita;
	
} else if (dir == 1 and !left and !down and !up)  {
	sprite_index = spr_respirando_esquerda;
}
