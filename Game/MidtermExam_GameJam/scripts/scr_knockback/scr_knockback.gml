function scr_knockback(){
	if (hurt_timer > 0) hurt_timer -= 1

	// hit an obstacle, only when not recently hit
	if (hurt_timer <= 0 && place_meeting(x, y, par_Obstacle)){
		hurt_timer = 90
		x_spd = -8
		recover_spd = 0
		global.scroll_spd = max(4, global.scroll_spd - 2)
	}

	if (x_spd < 0){
		// shoved back, the push fades out smoothly
		x += x_spd
		x_spd = min(x_spd + 0.4, 0)
	}
	else if (x < home_x){

		recover_spd = min(recover_spd + 0.0001, 1)
		x = min(x + recover_spd, home_x)
	}
	else {
		recover_spd = 0
	}

	// blink while recovering
	if (hurt_timer > 0 && (hurt_timer div 4) mod 2 == 0){
		image_alpha = 0.4
	}
	else {
		image_alpha = 1
	}

}