var _scale = 3;
var _sprite_h = sprite_get_height(spr_hotbar);
var _sprite_w = sprite_get_width(spr_hotbar);
var _x_pos = view_wport[0] / 2 - _sprite_w / 2 * _scale;
var _y_pos = view_hport[0] - _sprite_h * _scale;
	
draw_sprite_ext(spr_hotbar, 1, _x_pos, _y_pos, _scale, _scale, 0, c_white, 1);