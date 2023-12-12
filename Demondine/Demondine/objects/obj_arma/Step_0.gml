/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if instance_exists(arma_id) {
	
	x = arma_id.x + 15
	y = arma_id.y + 6
	
	arma_x = x + lengthdir_x(60, arma_dir);
	arma_y = y + lengthdir_y(60, arma_dir);;
	
	image_angle = arma_dir;
	
	function atirar() {
		var proje = instance_create_layer(arma_x, arma_y, "Projetil", obj_projetil);
		proje.image_angle = arma_dir;
		proje.direction = arma_dir;
		proje.speed = 8;
	}
	
} else {
	instance_destroy()	
}
