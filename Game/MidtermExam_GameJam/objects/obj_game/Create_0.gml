show_debug_overlay(true)

if (!variable_global_exists("scroll_spd")){
	global.scroll_spd = 4
	global.distance = 0
	global.zone_end = 100
	global.game_over = false
	global.fade = 0
}
global.leaving = false