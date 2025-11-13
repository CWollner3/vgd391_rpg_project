card_strike = create_card(
    "Strike",
    spr_card_simple,
    "Deal damage to a single enemy.",
    card_effect_simple_damage,
    [undefined, 10]   // target object(s) and parameters
);

card_heavy_strike = create_card(
    "Heavy Strike",
    spr_card_heavy,
    "Deal double damage to a single enemy.",
    card_effect_double_damage,
    [undefined, 20]
);

card_heal = create_card(
    "Heal",
    spr_card_heal,
    "Heal the player.",
    card_effect_heal,
    [undefined, 10]
);