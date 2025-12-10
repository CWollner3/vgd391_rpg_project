// Set up your deck as an empty array
deck = array_create(0);
array_copy(deck, 0, global.deck, 0, array_length(global.deck));

// Set up your discard pile 
discard = array_create(0);

deck_is_visible = true;

// Starting deck
//array_push(deck, global.card_strike);
//array_push(deck, global.card_strike);
//array_push(deck, global.card_strike);
//array_push(deck, global.card_strike);
//array_push(deck, global.card_heal);
//array_push(deck, global.card_heavy_strike);
//array_push(deck, global.card_drain_spell);
//array_push(deck, global.card_attack_heal);

show_debug_message("Recreating deck")

// adjustable dealing position
draw_x_position = 83;
draw_y_position = 155;
card_spacing = 40;
last_played_card_x = array_create(0);

randomize();
//shuffle_cards(deck);
//draw_cards(5);

function draw_card(_x, _y) {
    if (array_length(deck) > 0) {
        var card_data = array_pop(deck);
        
        var card_inst = instance_create_depth(_x, _y, 0, obj_card);
        card_inst.card = card_data;
        card_inst.sprite_index = card_data.sprite;
        show_debug_message("Draw card: " + card_inst.card.name);
        
    } else {
        shuffle_discard_pile();
        draw_card(_x,_y);
    }
    show_debug_message("num cards: {0}", array_length(deck));

}

function draw_cards(num) {
    for (var i=0; i<num; i++) {
        if (array_length(deck) <= 0) {
            shuffle_discard_pile();
        }
        draw_card(draw_x_position + card_spacing*i, draw_y_position);
    }
}


function shuffle_discard_pile() {
    show_debug_message("deck empty! Shuffling discard pile");
    array_copy(deck, 0, discard, 0, array_length(discard));
    discard = [];
    shuffle_cards(deck);
}

function collect_cards_before_leaving() {
    with(obj_card) {
        array_push(obj_deck.deck, card);
    }
    for (var i = 0; i < array_length(discard); i++) {
        array_push(deck, discard[i]);
    }
    shuffle_cards(deck);
    show_debug_message("Resetting; deck is now {0} cards", array_length(obj_deck.deck));
    last_played_card_x = array_create(0);
    discard = array_create(0);
}

