///option_init(option, text, callback)
var option = argument0;
var text = argument1;
var callback = argument2;

option.on_pressed = callback;
option.active = true;

draw_set_font(ftBig);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

var width = string_width(text) * OPTION_SCALE;
var half_width = width / 2;
var height = string_height(text) * OPTION_SCALE;
var half_height = height / 2;
var surface = surface_create(width, height);

surface_set_target(surface);
draw_clear_alpha(c_white, 0);
draw_text_transformed(half_width, half_height, text, OPTION_SCALE, OPTION_SCALE, 0);
option.sprite_index = sprite_create_from_surface(surface, 0, 0, width, height, false, true, half_width, half_height);
surface_free(surface);
surface_reset_target();
