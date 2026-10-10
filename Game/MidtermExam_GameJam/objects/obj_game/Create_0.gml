display_set_gui_size(1600, 900);

if (!audio_is_playing(Sound9)) {
    audio_play_sound(Sound9, 1, true);
}

if (!variable_global_exists("scroll_spd") || room == room_first){
	global.scroll_spd = 4
	global.distance = 0
}
if (!variable_global_exists("fade")) global.fade = 0

instructions=true
alarm[0]=60* 5

global.game_over = false
global.leaving = false
global.restarting = false
played_death_sound = false;