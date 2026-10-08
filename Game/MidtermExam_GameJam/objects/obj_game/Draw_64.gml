draw_set_color(c_white)
draw_text(16, 16, "Distance: " + string(floor(global.distance)) + " m")

if (global.game_over){
	draw_text(room_width / 2 - 60, room_height / 2, "GAME OVER - press R")
}