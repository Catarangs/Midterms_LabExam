function scr_setSprite(){
	if (ducking){
		sprite_index = spr_Player_duck
	}
	else if (jumping || falling){
		sprite_index = spr_Player_jump
	}
	else {
		sprite_index = spr_Player_run
	}
}