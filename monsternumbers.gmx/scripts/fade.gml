///fade(color, duration, callback)
var color = argument0;
var duration = argument1 * room_speed;
var callback = argument2;

var fader = instance_create(0, 0, objFade);
fader.color = color;
fader.duration = duration;
fader.on_complete = callback;
fader.alarm[0] = duration;
