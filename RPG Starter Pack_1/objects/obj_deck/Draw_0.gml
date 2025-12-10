if (visible) {
if (array_length(deck) > 0) {
    for (var i = 0; i < array_length(deck); i++) {
    // draw stack of cards
    draw_sprite(sprite_index, 0, x + i, y + i);
}
} else {
    draw_sprite(sprite_index, 1, x, y);
}
}

