function scr_stamina() {

    if (stamina_key && stamina > 0 && !ducking) {
        is_dashing = true;
        stamina = max(0, stamina - stamina_drain);
    } else {
        is_dashing = false;
        stamina = min(stamina_max, stamina + stamina_recharge);
    }

    if (is_dashing) {
        stamina_boost = min(stamina_boost + 0.2, boost_max);
    } else {
        stamina_boost = max(stamina_boost - 0.2, 0);
    }
}