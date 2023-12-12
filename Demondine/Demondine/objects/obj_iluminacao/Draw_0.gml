/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if surface_exists(sombra_surface) {
	surface_set_target(sombra_surface)
	
	draw_set_color(c_black)
	draw_set_alpha(1);
	
	draw_rectangle(0, 0, room_width, room_height, 0)
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	
	draw_set_alpha(.2)
	draw_circle(obj_girafa.x, obj_girafa.y, 100 + irandom(1), 0)
	
	draw_set_alpha(.5);
	draw_circle(obj_girafa.x, obj_girafa.y, 75 + irandom(-1), 0)
	draw_set_alpha(1);
		
	if global.troca == 1 {
		if global.luz == true{
			obj_lanterna.image_index = 1;
			draw_set_alpha(.5);
			draw_line_width(obj_lanterna.lanterna_x, obj_lanterna.lanterna_y, obj_topo_lanterna.lanterna_top_x, obj_topo_lanterna.lanterna_top_y, 150)
			draw_set_alpha(1);	
		} else {
			obj_lanterna.image_index = 0; }
	}
	
	gpu_set_blendmode(bm_normal);

	surface_reset_target()
} else {
	sombra_surface = surface_create(room_width, room_height)	
}

draw_surface(sombra_surface, 0, 0);





