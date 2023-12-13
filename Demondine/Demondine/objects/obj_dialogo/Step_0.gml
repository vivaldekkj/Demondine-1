/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == false{
	
	scr_textos()
	inicializar = true;
	
}

if keyboard_check_pressed(vk_space){
	if pagina < array_length(texto) - 1 {
		pagina++;	
	} else {
		global.dialogo = false;
		instance_destroy();	
	}
	
}
