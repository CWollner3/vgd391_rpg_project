if (!card_collected) {
    card_collected = true;
    add_cards();
    shuffle_cards(global.deck);
show_debug_message("cards in deck: {0}", array_length(global.deck));
audio_play_sound(chest_sound, 0, false);
create_dialog([
    {
        name: "Angsty Chest",
        msg: "Here's your card or whatever..."
    } 
    ]);
obj_dialog.next_room = true;
}
