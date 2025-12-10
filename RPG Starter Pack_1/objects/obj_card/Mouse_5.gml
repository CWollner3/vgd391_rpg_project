with(obj_card_right_click) {
    instance_destroy(self);
}
var popup = instance_create_depth(x, y - 40, 0, obj_card_right_click);
popup.description = card.description;
