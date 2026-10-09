function scr_platform_check() {
    if (v_spd > 0) {
        var on_platform = instance_place(x, y + v_spd, obj_platform);
        
        if (on_platform != noone) {
            if (bbox_bottom <= on_platform.bbox_top + 4) {
                while (!place_meeting(x, y + sign(v_spd), obj_platform)) {
                    y += sign(v_spd);
                }
                v_spd = 0;
                jumping = false;
                falling = false;
                ducking = duck_key;
                
                if (jump_key && !ducking) {
                    jumping = true;
                    v_spd = -jump_Spd;
                }
            }
        }
    }
    if (place_meeting(x + 2, y, obj_platform)) {
        x -= global.scroll_spd;
    }
}