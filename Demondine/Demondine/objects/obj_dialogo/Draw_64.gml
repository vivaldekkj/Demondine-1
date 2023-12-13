/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _gui1 = display_get_gui_width()
var _gui2 = display_get_gui_height()


var _xx = 0;
var _yy = 500;
var _c = c_black
draw_set_font(fnt_undertale);
draw_rectangle_color(_xx, _yy, _gui1, _gui2, _c, _c, _c, _c, false)
draw_text_ext(_xx + 32, _yy  + 32, texto[pagina], 32, _gui1 - 64);

