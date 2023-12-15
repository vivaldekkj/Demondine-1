/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

other.vida -= obj_girafa;

var _dir = point_direction(obj_girafa.x, obj_girafa.y, other.x, other.y);
other.empurrar_dir = _dir;
other.empurrar_vel = 4;
other.alarm[1] = 5;
other.estado = scr_dino_hit;


instance_destroy()







