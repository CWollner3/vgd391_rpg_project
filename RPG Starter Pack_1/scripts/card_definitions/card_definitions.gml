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
    [undefined, 0, 10] 
    // Throwing an error anytime card is used.
    // Needs to add plus 10 HP everytime the player levels up. When using the 
    // card should start with 10 HP given. Then after the player levels up should be 
    // 20 HP when the card is used 
);

card_attack_heal = create_card (
    "Attack and Heal",
    spr_card_attack_heal, 
    "Attack enemy. Take that damage and heal self",
    card_effect_attack_heal,
    [undefined, 10, 10]
)

card_drain_spell = create_card (    //add debug message to make sure its actully draining over time
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
array_push(deck, card_heal);
array_push(deck, card_heal);


