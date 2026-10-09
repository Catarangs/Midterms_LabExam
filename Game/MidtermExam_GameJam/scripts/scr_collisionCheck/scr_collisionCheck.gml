function scr_collisionCheck(){
	if place_meeting(x,y +v_spd, obj_wall){
		while(!place_meeting(x,y+sign(v_spd), obj_wall)){
			y +=sign(v_spd)
		}
		v_spd=0
	}
	if place_meeting(x,y +v_spd, obj_platform){
		while(!place_meeting(x,y+sign(v_spd), obj_platform)){
			y +=sign(v_spd)
		}
		v_spd=0
	}
	y+=v_spd
}