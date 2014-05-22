///nav_pressed(menu, button)
var menu = argument0;
var button = argument1;

if (button == menu.back) {
    if (menu.blurb == 0) {
        room_goto(rmMenu);
    }
    menu.blurb--;
    if (menu.blurb == 0) {
        button.sprite_index = menu.return_sprite;
    }
    menu.forward.sprite_index = menu.forward_sprite;
}
else if (button == menu.forward) {
    if (menu.blurb == 2) {
        room_goto(rmMenu);
    }
    menu.blurb++;
    if (menu.blurb == 2) {
        button.sprite_index = menu.return_sprite;
    }
    menu.back.sprite_index = menu.back_sprite;
}
