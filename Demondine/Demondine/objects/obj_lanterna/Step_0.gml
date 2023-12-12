/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


#region

if instance_exists(lanterna_id) {
	
	x = lanterna_id.x + 15
	y = lanterna_id.y + 6
	
	lanterna_x = x + lengthdir_x(40, lanterna_dir);
	lanterna_y = y + lengthdir_y(40, lanterna_dir);;
	
	global.lanterna_x = lanterna_x;
	global.lanterna_y = lanterna_y;
	
	image_angle = lanterna_dir;
	

} else {
	instance_destroy()	
}

#endregion




