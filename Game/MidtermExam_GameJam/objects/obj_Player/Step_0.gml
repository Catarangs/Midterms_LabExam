if (global.game_over) exit

scr_controls();
scr_ground_check();
scr_platform_check();
scr_collisionCheck();
scr_setSprite();

if (x < -32) {
    global.game_over = true;
}

