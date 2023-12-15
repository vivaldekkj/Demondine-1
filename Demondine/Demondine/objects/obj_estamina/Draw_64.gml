/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


#region

if global.estamina == 6 {
	draw_sprite(spr_estamina, 0, x, y + 60)	
} 
else if global.estamina == 5 {
	draw_sprite(spr_estamina, 1, x, y + 60)	
}
else if global.estamina == 4 {
	draw_sprite(spr_estamina, 2, x, y + 60)	
}
else if global.estamina == 3 {
	draw_sprite(spr_estamina, 3, x, y + 60)	
}
else if global.estamina == 2 {
	draw_sprite(spr_estamina, 4, x, y + 60)	
}
else if global.estamina == 1 {
	draw_sprite(spr_estamina, 5, x, y + 60)	
}
else{
	draw_sprite(spr_estamina, 6, x, y + 60)	
}

#endregion
