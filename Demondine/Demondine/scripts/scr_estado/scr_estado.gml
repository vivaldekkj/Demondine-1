// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_dino_colision() {
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
	}


function scr_slime_checar() {
	if distance_to_object(obj_girafa) <= dist_agro {
		estado = scr_dino_pers;	
	}
}


function scr_dino_escolher(){
	
	if sprite_index == spr_dino_atk_di {
			sprite_index = spr_dino_di;
		} else {
			sprite_index = spr_dino;
		}
	
	scr_slime_checar();
	
	prox_estado = choose(scr_dino_andando, scr_slime_parado)
	
		if prox_estado == scr_dino_andando{
			estado = scr_dino_andando;
			
			dest_x = irandom_range(0, room_width);
			dest_y = irandom_range(0, room_height);
			
		} 
		else if prox_estado == scr_slime_parado {
			estado = scr_slime_parado;
		}
		
}


function scr_dino_andando() {
	
	scr_slime_checar();
	
	image_speed = 1;
	
	if distance_to_point(dest_x, dest_y) > vel  {
	var _dir = point_direction(x, y, dest_x, dest_y);
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	
	if x +velh > x {
		sprite_index = spr_dino_di;	
	} else {
		sprite_index = spr_dino;
	}
	
	scr_dino_colision();
	} else {
		x = dest_x;
		y = dest_y;
	}
}


function scr_slime_parado() {
	scr_slime_checar();
	image_speed = 0.5;
}

function scr_dino_pers () {
		
		
		if sprite_index == spr_dino_di {
			sprite_index = spr_dino_atk_di;
		} else {
			sprite_index = spr_dino_atk_es;
		}
		
		dest_x = obj_girafa.x;
		dest_y = obj_girafa.y
		
		var _dir = point_direction(x, y, dest_x, dest_y);
		velh = lengthdir_x(vel_pers, _dir);
		velv = lengthdir_y(vel_pers, _dir);
		
	if x +velh > x {
		sprite_index = spr_dino_atk_di;	
	} else {
		sprite_index = spr_dino_atk_es;
	}
		
		scr_dino_colision();
		
		if distance_to_object(obj_girafa) >= dist_desagro {
		estado = scr_dino_escolher;	
		alarm[0] = irandom_range(120, 240);
	}
		
}
	
	
function scr_dino_hit() {
	
	empurrar_vel = lerp (empurrar_vel, 0, 0.05);
	
	velh = lengthdir_x(empurrar_vel, empurrar_dir)	
	velv = lengthdir_y(empurrar_vel, empurrar_dir)
	
	scr_dino_colision()
}
