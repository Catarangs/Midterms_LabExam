function scr_stamina() {

    if (stamina <= 0) {
        can_dash = false;
    }
    
    if (!is_dashing) {
        stamina = min(stamina_max, stamina + stamina_recharge);
    }

    if (!can_dash) {
        is_dashing = false;
        if (stamina >= stamina_max && !stamina_key) {
            can_dash = true;
        }
    } 

    else {
        if (stamina_key && !ducking) {
            is_dashing = true;
            stamina = max(0, stamina - stamina_drain);
        } else {
            is_dashing = false;
        }
    }

    if (is_dashing) {
        stamina_boost = min(stamina_boost + 0.1, boost_max);
    } else {
        stamina_boost = max(stamina_boost - 0.1, 0);
    }

    if (is_dashing && x < home_x && x_spd >= 0) {
        sprecover_spd = min(sprecover_spd + 0.05, 2.5);
    } else {
        sprecover_spd = 0;
    }
}