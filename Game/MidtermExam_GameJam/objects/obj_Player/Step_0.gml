if (global.game_over) exit

scr_controls();
scr_ground_check();
scr_platform_check();
scr_collisionCheck();
scr_setSprite();
scr_knockback()


//Originally -32 but -0 matches the fog collision of the player (change when needed)
if (x < -0) {
    global.game_over = true;
}

