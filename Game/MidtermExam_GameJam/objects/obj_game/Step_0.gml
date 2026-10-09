layer_hspeed("Background", -global.scroll_spd * 0.5)

if (!global.game_over && !global.leaving){
	global.scroll_spd = min(global.scroll_spd + 0.002, 14)
	global.distance += global.scroll_spd / 64
}

if (global.leaving){
	global.fade = min(global.fade + 0.04, 1)
	if (global.fade >= 1){
		global.zone_end += 100
		var nr = room_next(Room2)
		if (nr == -1) nr = Room2
		room_goto(nr)
	}
}
else {
	global.fade = max(global.fade - 0.04, 0)
}

if (global.game_over && keyboard_check_pressed(ord("R"))){
	game_restart()
}