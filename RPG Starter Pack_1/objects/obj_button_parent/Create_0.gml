/// ---------------------------
/// Parent Button: Create Event
/// ---------------------------
sprite_bg = spr_button_background; // change this to the button background your

// Font for the text
font = global.pixelfont;

// Enabled state
enabled = true;

// Auto-size setting
autosize = true;
padding = 3; // padding around text

// Internal state
hover = false;
pressed = false;

// Callback function 
on_click = noone;
if (autosize) {
draw_set_font(font);
var tw = string_width(text);
var th = string_height(text);
w = tw + padding * 2;
h = th + padding * 2;
} else {
// fallback defaults if the child wants fixed size
w = 200;
h = 60;
}
// set the button's mask
mask_index = spr_mask_1x1;
image_xscale = w;
image_yscale = h;
