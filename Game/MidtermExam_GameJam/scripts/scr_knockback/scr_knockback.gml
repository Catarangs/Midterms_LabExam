function scr_knockback(){
	if (hurt_timer > 0) hurt_timer -= 1

	if (hurt_timer <= 0 && place_meeting(x, y, par_Obstacle)){
		hurt_timer = 90
		x_spd = -8
		recover_spd = 0
		sprecover_spd = 0 // Reset sprint recovery on hit
		global.scroll_spd = max(4, global.scroll_spd - 2)
		
		audio_play_sound(hit, 1, false)
	}

	if (x_spd < 0){
		x += x_spd
		x_spd = min(x_spd + 0.4, 0)
	}
	else if (x < home_x){
		var total_recovery = recover_spd + sprecover_spd;
		
		recover_spd = min(recover_spd + 0.0001, 1)
		x = min(x + total_recovery, home_x)
	}
	else {
		recover_spd = 0
		sprecover_spd = 0
	}

	if (hurt_timer > 0 && (hurt_timer div 4) mod 2 == 0){
		image_alpha = 0.4
	}
	else {
		image_alpha = 1
	}
}