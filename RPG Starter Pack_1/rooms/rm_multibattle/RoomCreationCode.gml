if (object_exists(obj_deck)) {
    obj_deck.deck_is_visible = true;
    shuffle_cards(obj_deck.deck);
    obj_deck.draw_cards(5);
}