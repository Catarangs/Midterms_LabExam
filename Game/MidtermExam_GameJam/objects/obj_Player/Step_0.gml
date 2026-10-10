if (global.game_over) exit

scr_controls();
scr_stamina();
scr_ground_check();
scr_platform_check();
scr_collisionCheck();
scr_setSprite();
scr_knockback();


//Originally -32 but -0 matches the fog collision of the player (change when needed)
if (x < -20) {
    global.game_over = true;
}


var is_grounded = place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_platform);
var is_running = is_grounded && !ducking && !global.game_over && (x_spd >= 0);

if (is_running) {
    if (!audio_is_playing(walking)) {
        audio_play_sound(walking, 1, true);
    }
} else {
    if (audio_is_playing(walking)) {
        audio_stop_sound(walking);
    }
}