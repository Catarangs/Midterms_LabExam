show_debug_overlay(true)

if (!variable_global_exists("scroll_spd") || room == room_first){
	global.scroll_spd = 4
	global.distance = 0
}
if (!variable_global_exists("fade")) global.fade = 0

global.game_over = false
global.leaving = false
global.restarting = false
played_death_sound = false;