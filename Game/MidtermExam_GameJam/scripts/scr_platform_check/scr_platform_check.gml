function scr_platform_check(){

    if (v_spd > 0){
        var p = instance_place(x, y + v_spd, obj_platform)
        if (p != noone && bbox_bottom <= p.bbox_top + 1){
            y = p.bbox_top - (bbox_bottom - y)
            v_spd = 0
        }
    }

    var s = instance_place(x + 2, y, obj_platform)
    if (s != noone && v_spd >= 0 && bbox_bottom > s.bbox_top + 4){
        x -= global.scroll_spd + stamina_boost
    }
}