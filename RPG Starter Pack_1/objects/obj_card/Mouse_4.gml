if (obj_multibattle_manager.player_turn) {
    // Deselect all other cards
    with (obj_card) {
        selected = false;
    }
    //select this card
    selected = true;
    curve_position = 0;
    alarm[0] = 1;
}



