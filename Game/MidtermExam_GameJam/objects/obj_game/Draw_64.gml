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