function scr_ground_check(){
	var on_ground = place_meeting(x, y + 1, obj_wall)

	if (on_ground){
		v_spd = 0
		jumping = false
		falling = false
		ducking = duck_key

		if (jump_key && !ducking){
			jumping = true
			v_spd = -jump_Spd
		}
	}
	else {
		if (duck_key){
			ducking = true
			jumping = false
			v_spd += grav * 4
		}
		else {
			ducking = false
			v_spd += grav
		}
		v_spd = min(v_spd, termVelocity)
		falling = (v_spd > 0)
	}
}