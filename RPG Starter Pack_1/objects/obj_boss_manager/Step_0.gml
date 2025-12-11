if (instance_number(obj_multibattle_enemy) <= 0) {
    if (object_exists(obj_multibattle_switcher)) {
        //TODO: add SFX and a display
        if (object_exists(obj_deck)) {
    obj_deck.deck_is_visible = false;
    obj_deck.collect_cards_before_leaving();

}

        room_goto(post_Boss_dialog);
    }
}
