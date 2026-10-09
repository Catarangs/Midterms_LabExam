layer_hspeed("Background", -global.scroll_spd * 0.5)

if (!global.game_over && !global.leaving){
	global.scroll_spd = min(global.scroll_spd + 0.0004, 14)
	global.distance += global.scroll_spd / 64
}

if (global.leaving){
	global.fade = min(global.fade + 0.04, 1)
	if (global.fade >= 1){
		if (global.restarting){
			room_goto(room_first)
		}
		else {
			var nr = room_next(room)
			if (nr == -1) nr = room_first
			room_goto(nr)
		}
	}
}
else {
	global.fade = max(global.fade - 0.04, 0)
}

if (global.game_over && keyboard_check_pressed(ord("R")) && !global.leaving){
	global.leaving = true
	global.restarting = true
}