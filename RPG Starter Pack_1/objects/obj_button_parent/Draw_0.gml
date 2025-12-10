/// ---------------------------
/// Parent Button: Draw Event
/// ---------------------------
// Determine background color
var col;
if (!enabled) col = merge_color(col_normal, c_black, 0.5);
else if (pressed) col = col_pressed;
else if (hover) col = col_hover;
else col = col_normal;
// shift the button down one pixel if it is pressed
yval = ystart;
if (pressed) yval = ystart + 1;
// Draw background using 9-slice
draw_sprite_stretched_ext(sprite_bg, 0, x, yval, w, h, col, 1);
// Draw text
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(col_text);
draw_text(x + w * 0.5, yval + h * 0.5, text);
