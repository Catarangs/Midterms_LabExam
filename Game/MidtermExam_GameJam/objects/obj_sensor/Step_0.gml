var move_spd = global.scroll_spd;
if (instance_exists(obj_Player)) {
    move_spd += obj_Player.stamina_boost;
}

x -= move_spd;

if (place_meeting(x, y, obj_Player)){
    global.leaving = true;
}

if (x < -sprite_width) instance_destroy();


