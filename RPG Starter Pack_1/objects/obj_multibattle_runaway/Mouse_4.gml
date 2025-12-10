if (obj_multibattle_manager.player_turn) {
    if (object_exists(obj_deck)) {
    obj_deck.deck_is_visible = false; 
    obj_deck.collect_cards_before_leaving();
}
    room_goto(obj_multibattle_switcher.original_room);
}
