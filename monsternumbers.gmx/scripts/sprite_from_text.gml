///sprite_from_text(text, scale);
var text = argument0;
var scale = argument1;

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var width = string_width(text) * scale;
var height = string_height(text) * scale;
var surf = surface_create(width, height);
surface_set_target(surf);
draw_clear_alpha(c_white, 0);
draw_text_transformed(0, 0, text, scale, scale, 0);
var sprite = sprite_create_from_surface(surf, 0, 0, width, height, false, true, width / 2, height / 2);
surface_free(surf);
surface_reset_target();
return sprite;
