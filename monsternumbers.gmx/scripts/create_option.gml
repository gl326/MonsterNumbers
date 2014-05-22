///create_option(x, y, text, menu, callback)
var text = argument2;
var menu = argument3;
var callback = argument4;

var option = instance_create(argument0, argument1, objOption);
option.menu = menu;
option.on_pressed = callback;
option.active = true;
draw_set_font(ftBig);
draw_set_color(c_black);
option.sprite_index = sprite_from_text(text, OPTION_SCALE);

return option;
