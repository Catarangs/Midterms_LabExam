var effective_spd = global.scroll_spd;
if (instance_exists(obj_Player)) {
    effective_spd += obj_Player.stamina_boost;
}

if (layer_exists("Background")) {
    layer_hspeed("Background", -effective_spd * 0.5);
}

if (!global.game_over && !global.leaving){
    global.scroll_spd = min(global.scroll_spd + 0.0003, 14);
    global.distance += effective_spd / 64;
}

// 2. Play death sound EXACTLY ONCE on Game Over
if (global.game_over && !played_death_sound) {
    audio_play_sound(deathsound, 1, false);
    played_death_sound = true;
}

if (global.leaving){
    global.fade = min(global.fade + 0.04, 1);
    
    if (global.fade >= 1){
        if (global.restarting){
            global.scroll_spd = 4;
            global.distance = 0;
            global.game_over = false;
            global.restarting = false;
            global.leaving = false; 
            
            played_death_sound = false; 
            
            room_goto(room_first);
        }
        else {
            global.leaving = false; 
            
            var nr = room_next(room);
            if (nr == -1) nr = room_first;
            room_goto(nr);
        }
    }
}
else {
    global.fade = max(global.fade - 0.04, 0);
}

if (global.game_over && keyboard_check_pressed(ord("R")) && !global.leaving){
    global.leaving = true;
    global.restarting = true;
}