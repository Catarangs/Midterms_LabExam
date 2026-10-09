draw_set_font(Pixel)

draw_set_color(c_white)
draw_text(100, 16, "Distance: " + string(floor(global.distance)) + " m")

if (global.game_over){
	draw_text(room_width / 2 - 60, room_height / 2, "GAME OVER - press R")
}

draw_set_alpha(global.fade)
draw_set_color(c_white)
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false)
draw_set_alpha(1)
draw_set_color(c_white)

if (instance_exists(obj_Player)) {
    var _bar_x = 20;
    var _bar_y = 40;
    var _bar_w = 120;
    var _bar_h = 10;
    
    var _pct = obj_Player.stamina / obj_Player.stamina_max;

    // Background Bar
    draw_set_color(c_dkgray);
    draw_rectangle(_bar_x, _bar_y, _bar_x + _bar_w, _bar_y + _bar_h, false);

    // Stamina Level
    draw_set_color(c_yellow);
    draw_rectangle(_bar_x, _bar_y, _bar_x + (_bar_w * _pct), _bar_y + _bar_h, false);

    // Border
    draw_set_color(c_white);
    draw_rectangle(_bar_x, _bar_y, _bar_x + _bar_w, _bar_y + _bar_h, true);
}