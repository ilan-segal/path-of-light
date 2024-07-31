draw_sprite_ext(spr_button_silhouette, 1, x, y, 1, 1, 0, c_white, 1);
draw_sprite_ext(
	spr_button_silhouette,
	1,
	x + drop_shadow_distance,
	y + drop_shadow_distance,
	1,
	1,
	0,
	c_black,
	drop_shadow_opacity
);

var _opacity = hovered ? 0.9 : 1.0;
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, _opacity);

draw_sprite(text_sprite_index, 1, x, y);