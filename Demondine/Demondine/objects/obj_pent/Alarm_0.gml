/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomize();

var _dirx = irandom_range(0, 0);

var _diry = irandom_range(0, 0);

instance_create_layer(x + _dirx, y + _diry, "Instances", obj_dino);

var _dirx = irandom_range(-30, 30);

var _diry = irandom_range(-30, 30);

instance_create_layer(x + _dirx, y + _diry, "Instances", obj_dino);

var _dirx = irandom_range(-40, 40);

var _diry = irandom_range(-40, 40);

instance_create_layer(x + _dirx, y + _diry, "Instances", obj_dino);

var _dirx = irandom_range(-20, 20);

var _diry = irandom_range(-20, 20);

instance_create_layer(x + _dirx, y + _diry, "Instances", obj_dino);

var _dirx = irandom_range(-80, 80);

var _diry = irandom_range(-80, 80);

instance_create_layer(x + _dirx, y + _diry, "Instances", obj_dino);


instance_destroy();



