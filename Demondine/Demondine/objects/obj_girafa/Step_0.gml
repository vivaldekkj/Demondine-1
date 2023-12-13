/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))


if global.dialogo == false {
#region colisao

var hor = right - left;
var ver = down - up;

if ((hor != 0) and (ver != 0)) {
	velh = (right - left) * veld;
	velv = (down - up) * veld;
}else {
velh = (right - left) * vel;
velv = (down - up) * vel;
}


if place_meeting(x + velh, y, obj_parede) {
	while !place_meeting(x + sign(velh), y, obj_parede) {
		x += sign(velh)
	}
	velh = 0;
}


x += velh

if place_meeting(x, y + velv, obj_parede) {
	while !place_meeting(x, y + sign(velv), obj_parede) {
		y += sign(velv)
	}
	velv = 0;
}

y += velv

#endregion


#region mudança de sprite
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
#endregion



#region tomando dano
if alarm[0] > 0 {
	if image_alpha >= 1 {
		alpha = -0.1;	
	} else if image_alpha <= 0 {
		alpha = 0.1;
	}
	image_alpha += alpha;
} else {
	image_alpha = 1;	
}
#endregion

}


if global.uso == 1 {
#region arma
if global.troca == 0 {


with(obj_arma) {
	arma_dir = point_direction(x, y, mouse_x, mouse_y);	

if global.dialogo == false {
		if (mouse_check_button_pressed(mb_left)){
			if alarm[1] <= 0 {
				atirar()	
				audio_play_sound(snd_tiro, 1, 0);
				alarm[1] = 60
			}
				obj_arma.image_index = 1;
		} else {
			obj_arma.image_index = 0;
		}

	}
}
}
#endregion


#region lanterna
if global.troca == 1 {
	with(obj_lanterna) {
		lanterna_dir = point_direction(x, y, mouse_x, mouse_y);	
	}
}
	
#endregion



#region lanterna_topo

if global.troca == 1 {
	with(obj_topo_lanterna) {
		lanterna_top_dir = point_direction(x, y, obj_lanterna.lanterna_x, obj_lanterna.lanterna_y);	
	}
}

	
if global.dialogo == false {
	if global.troca == 1 {
		if mouse_check_button_pressed(mb_left) {
			global.luz = !global.luz;
			audio_play_sound(snd_click, 1, 0)
		}
	}
}

#endregion

}



#region dialogo

if global.dialogo == false {
	if distance_to_object(obj_par_npcs) <= 10 {
		if keyboard_check(ord("F")) {
			var _npc = instance_nearest(x, y, obj_par_npcs);
			var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
			_dialogo.npc_nome = _npc.nome
		}
	}
}

#endregion