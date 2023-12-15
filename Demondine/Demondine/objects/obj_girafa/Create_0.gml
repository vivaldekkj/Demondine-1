/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

#region vel and dir

veld = 1.5;
velv = 0;
velh = 0;
vel = 2;


dano = 1;
vida = 4;

right = 0
left = 0;
up = 0;
down = 0;
shift = 0;

dir = 0;

#endregion


alarm[1] = 0;
alarm[0] = 0;

alpha = 1;
color = c_white;


minha_lanterna_top = instance_create_layer(x, y, "Lanterna", obj_topo_lanterna)
minha_lanterna_top.lanterna_top_id = self


minha_lanterna = instance_create_layer(x, y, "Arma", obj_lanterna)
minha_lanterna.lanterna_id = self


minha_arma = instance_create_layer(x, y, "Lanterna", obj_arma)
minha_arma.arma_id = self