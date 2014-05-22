///option_pressed(option)
var option = argument0;
var menu = option.menu;

with (menu.start_option) {
    if (id != option) {
        instance_destroy();
    }
}
with (menu.howto_option) {
    if (id != option) {
        instance_destroy();
    }
}
with (menu.quit_option) {
    if (id != option) {
        instance_destroy();
    }
}
