show_debug_overlay(true)
var el = layer_sprite_get_id("ChasingThingy", spr_enemy)
layer_sprite_alpha(el, 0.5)
if (!variable_global_exists("scroll_spd") || room == room_first){
	global.scroll_spd = 4
	global.distance = 0
}
if (!variable_global_exists("fade")) global.fade = 0

global.game_over = false
global.leaving = false
global.restarting = false