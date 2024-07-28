// Slowly fade out the good sign, fade in the evil sign
var _glow = instance_create_layer(x, y, "Instances", obj_altar_glow_evil);
_glow.image_alpha = 0;
_glow.image_xscale *= obj_altar_glow.sprite_width / obj_altar_glow_evil.sprite_width;
_glow.image_yscale *= obj_altar_glow.sprite_height / obj_altar_glow_evil.sprite_height;