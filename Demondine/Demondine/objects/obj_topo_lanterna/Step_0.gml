/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

#region

if instance_exists(lanterna_top_id) {
	
	x = lanterna_top_id.x + 15
	y = lanterna_top_id.y + 6
	
	lanterna_top_x = x + lengthdir_x(400, lanterna_top_dir);
	lanterna_top_y = y + lengthdir_y(400, lanterna_top_dir);;
	
	image_angle = lanterna_top_dir;
	

} else {
	instance_destroy()	
}

#endregion





