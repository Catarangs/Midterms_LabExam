function scr_controls(){
    jump_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
    duck_key = keyboard_check(ord("S")) or keyboard_check(vk_down)
	//stamina na toh
	stamina_key = keyboard_check(vk_shift) or keyboard_check(vk_right) or keyboard_check(ord("D"))
}