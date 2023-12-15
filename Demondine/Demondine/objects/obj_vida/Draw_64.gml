/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if global.vida == 4 {
	draw_sprite(spr_vida, 0, x, y)	
} 
else if global.vida == 3 {
	draw_sprite(spr_vida, 1, x, y)	
}
else if global.vida == 2 {
	draw_sprite(spr_vida, 2, x, y)	
}
else if global.vida == 1 {
	draw_sprite(spr_vida, 3, x, y)	
}
else {
	draw_sprite(spr_vida, 4, x, y)	
}


