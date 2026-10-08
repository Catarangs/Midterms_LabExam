mask_index = spr_Player_run
while (!place_meeting(x, y + 1, obj_wall) && y < room_height){
	y += 1
}

//initial stats
grav = 0.8
jump_Spd = 14
v_spd = 0
termVelocity = 16

//status
jumping = false
falling = false
ducking = false

//chase system
home_x = x
x_spd = 0
recover_spd = 0
hurt_timer = 0