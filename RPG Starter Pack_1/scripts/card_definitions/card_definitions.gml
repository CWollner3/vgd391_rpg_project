card_strike = create_card(
    "Strike",
    spr_card_simple,
    "Deal damage to a single enemy.",
    card_effect_simple_damage,
    [undefined, 10, 0]   // what its attacking, attack, health
);

card_heavy_strike = create_card(
    "Heavy Strike",
    spr_card_heavy,
    "Deal double damage to a single enemy.",
    card_effect_double_damage,
    [undefined, 20, 0]
);

card_heal = create_card(
    "Heal",
    spr_card_heal,
    "Heal the player.",
    card_effect_heal,
    [undefined, 0, 10] // Something is wrong with this line of code when you try and run the game
);

card_attack_heal = create_card (
    "Attack and Heal",
    spr_card_attack_heal, 
    "Attack enemy. Take that damage and heal self",
    card_effect_attack_heal,
    [undefined, 10, 10]
)

card_drain_spell = create_card (    //should be fixed
    "Damage over time",
    spr_card_drain_spell,
    "Drains enemy health",
    card_effect_drain_spell,
    [undefined, 5, 0]
)

deck = array_create(0);
array_push(deck, card_strike);
array_push(deck, card_strike);
array_push(deck, card_strike);
array_push(deck, card_strike);
array_push(deck, card_heal);


