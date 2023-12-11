/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (object_exists(follow)){
	targetx = follow.x;
	targety = follow.y;
}

x+=(targetx - x)/spd
y+=(targety - y)/spd

x = clamp(x, w_half, room_width - w_half);
y = clamp(y, h_half, room_height - h_half);

camera_set_view_pos(cam, x-w_half, y-h_half)
