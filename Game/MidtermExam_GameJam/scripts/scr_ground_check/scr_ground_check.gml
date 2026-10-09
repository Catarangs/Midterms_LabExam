function scr_ground_check(){
    var on_ground = place_meeting(x, y + 1, obj_wall)

	if (!on_ground && v_spd >= 0){
		var p = instance_place(x, y + 1, obj_platform)
		if (p != noone && bbox_bottom <= p.bbox_top + 1){
			on_ground = true
		}
	}

    if (on_ground){
        v_spd = 0
        jumping = false
        falling = false

        if (duck_key) {
            if (!ducking) { 
                audio_play_sound(Slide, 10, false);
            }
            ducking = true;
        } else {
            ducking = false;
        }

        if (jump_key && !ducking){
            jumping = true
            v_spd = -jump_Spd
            
            audio_stop_sound(Slide)
            audio_play_sound(Jump, 10, false);
        }
    }
    else {
        // Airborne logic
        if (duck_key){
            ducking = true
            jumping = false
            v_spd += grav * 4
        }
        else {
            ducking = false;
            v_spd += grav
        }
        v_spd = min(v_spd, termVelocity)
        falling = (v_spd > 0);
    }
}