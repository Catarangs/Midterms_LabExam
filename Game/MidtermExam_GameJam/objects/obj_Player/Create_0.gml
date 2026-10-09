mask_index = spr_Player_run
while (!place_meeting(x, y + 1, obj_wall) && y < room_height){
	y += 1
}

//initial stats
grav = 0.8
jump_Spd = 14
v_spd = 0
termVelocity = 16
sprint_speed=0

//status
jumping = false
falling = false
ducking = false
sprinting = false

//chase system
home_x = x
x_spd = 0
recover_spd = 0
hurt_timer = 0

// stamina system
stamina_max = 100
stamina = stamina_max
stamina_drain = 2
stamina_recharge = 0.4
can_dash = true;

// stamina boost modifier
stamina_boost = 0
boost_max = 2
is_dashing = false