draw_set_font(Pixel)
draw_set_color(c_white)

if (!global.game_over){
	draw_text(100, 16, "Distance: " + string(floor(global.distance)) + " m")
	
	if (instance_exists(obj_Player)) {
    var _bar_x = 105
    var _bar_y = 70
    var _bar_w = 150
    var _bar_h = 30
    
    var _pct = obj_Player.stamina / obj_Player.stamina_max;

    draw_set_color(c_dkgray)
    draw_rectangle(_bar_x, _bar_y, _bar_x + _bar_w, _bar_y + _bar_h, false)

    draw_set_color(c_yellow)
    draw_rectangle(_bar_x, _bar_y, _bar_x + (_bar_w * _pct), _bar_y + _bar_h, false)

    draw_set_color(c_white)
    draw_rectangle(_bar_x, _bar_y, _bar_x + _bar_w, _bar_y + _bar_h, true)
	}	
}


/*debug
if (instance_exists(obj_Player)){
	draw_text(16, 120, "x: " + string(obj_Player.x))
}
*/
draw_set_alpha(global.fade)
draw_set_color(c_white)
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false)
draw_set_alpha(1)
draw_set_color(c_white)