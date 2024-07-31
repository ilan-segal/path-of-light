draw_sprite_ext(spr_button_silhouette, 1, x, y, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(
	spr_button_silhouette,
	1,
	x + drop_shadow_distance,
	y + drop_shadow_distance,
	1,
	1,
	0,
	c_black,
	drop_shadow_opacity * image_alpha
);

var _opacity = hovered ? 0.9 : 1.0;
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, _opacity * image_alpha);

draw_sprite_ext(text_sprite_index, 1, x, y, 1, 1, 0, c_white, image_alpha);