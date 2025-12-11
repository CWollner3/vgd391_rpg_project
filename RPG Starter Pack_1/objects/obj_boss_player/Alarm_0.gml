if (walking) {
    _snd = choose_random_from_array(global.footstep_array);
    audio_play_sound(_snd, 8, false, 0.25);
    alarm[0] = 20;
}