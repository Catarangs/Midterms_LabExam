function scr_setSprite(){
	if (ducking){
		sprite_index = spr_Player_duck
		mask_index = spr_Player_duck
	}
	else if (jumping || falling){
		sprite_index = spr_Player_jump
		mask_index = spr_Player_run
	}
	else {
		sprite_index = spr_Player_run
		mask_index = spr_Player_run
	}
}