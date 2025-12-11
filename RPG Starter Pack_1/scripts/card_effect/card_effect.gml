function card_effect_simple_damage (_params) {
    var enemy = _params[0];
    var damage = _params[1];
    enemy.take_damage(damage);
    show_debug_message("Effect: Simple damage");
}

function card_effect_double_damage (_params) {
    var enemy = _params[0];
    var damage = _params[1];
    enemy.take_damage(damage * 2);
    show_debug_message("Effect: Double damage");
}

function card_effect_heal (_params) {
    if (object_exists(obj_multibattle_player)) {
        show_debug_message("Healing for {0} hp", obj_multibattle_player.data.health_recovery);
        obj_multibattle_player.data.hp += obj_multibattle_player.data.health_recovery;
        if (obj_multibattle_player.data.hp > obj_multibattle_player.data.hp_total) {
            obj_multibattle_player.data.hp = obj_multibattle_player.data.hp_total;
        }
    }
}

function card_effect_attack_heal (_params) {
    var enemy = _params[0];
    var damage = _params[1];
    enemy.take_damage(damage);
    show_debug_message("Effect: Attack and heal");
    if (object_exists(obj_multibattle_player)) {
        obj_multibattle_player.data.hp += obj_player.health_recovery;
        show_debug_message("Healing for {0} hp", obj_player.health_recovery);
        if (obj_multibattle_player.data.hp > obj_multibattle_player.data.hp_total) {
            obj_multibattle_player.data.hp = obj_multibattle_player.data.hp_total;
        }
    }
}

function card_effect_drain_spell (_params) {
    var enemy = _params[0];
    var damage = _params[1];
    enemy.take_damage(damage - 5);
    enemy.drained = true;
}