function scr_controls(){
    jump_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
    duck_key = keyboard_check(ord("S")) or keyboard_check(vk_down)
	//don't know if kasama
	interact_key = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)

}