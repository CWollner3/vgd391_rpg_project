if (obj_multibattle_manager.player_turn) {
    var _selected_enemy = noone;
    var _selected_card = noone;
    
    with(obj_multibattle_enemy) {
        if (selected) _selected_enemy = id;
            if (drained) {
                take_damage(5);
            }
    }
    with(obj_card) {
        if (selected) _selected_card = id;
    }
    
    if(_selected_card != noone and _selected_enemy != noone) {
        //player_attack(_selected_enemy, data.damage);
            if (instance_exists(_selected_enemy)) {
        audio_play_sound(Player_attack_sound, 10, false);
        curve_position = 0;
        alarm[0] = 1;
        _selected_enemy.selected = false;
        _selected_enemy.scale = 1;
        //_selected_enemy.take_damage(data.damage); 
    }
            _selected_card.card.effect([_selected_enemy, data.damage]);
    
    if (object_exists(obj_deck)) {
        array_push(obj_deck.discard, _selected_card.card);
        array_push(obj_deck.last_played_card_x, _selected_card.x);
    }
    
    instance_destroy(_selected_card);//_selected_card.selected = false;
        if (instance_exists(_selected_enemy)) _selected_enemy.selected = false;
            obj_multibattle_manager.enemies_turn();
    }
}

