var front = instance_create(0, room_height + 50, objCrowd);
front.sprite_index = sprCrowdFront;
front.depth = -1;
var back = instance_create(0, room_height + 100, objCrowd);
back.sprite_index = sprCrowdBack;
back.depth = -2;
