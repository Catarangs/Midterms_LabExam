draw_self()

draw_set_font(Pixel)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(x, y + sprite_height / 2 + 8, "Distance: " + string(floor(global.distance)) + " m")
draw_set_halign(fa_left)