///fade(color, duration, caller, callback, in)
var color = argument0;
var duration = argument1;
var callback = argument3;
var caller = argument2;
var in = argument4;

var fader = instance_create(0, 0, objFade);
var surf = surface_create(room_width, room_height);
surface_set_target(surf);
draw_set_color(color);
draw_rectangle(0, 0, room_width, room_height, false);
var fader_sprite = sprite_create_from_surface(surf, 0, 0, room_width, room_height, false, false, 0, 0);
surface_free(surf);
surface_reset_target();
fader.sprite_index = fader_sprite;

var from = 0;
var to = 1;
if (in) {
    to = 0;
    from = 1;
}

var tween_alpha = TweenCreate(fader, true);
TweenOnFinishAdd(tween_alpha, caller, callback);
TweenPlayOnce(tween_alpha, image_alpha__, from, to, duration, EaseOutCubic);
