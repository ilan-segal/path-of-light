var _sprite_h = sprite_get_height(spr_hotbar);
var _sprite_w = sprite_get_width(spr_hotbar);
var _x_pos = view_wport[0] / 2 - _sprite_w / 2 * global.ui_scale;
var _y_pos = view_hport[0] - _sprite_h * global.ui_scale;
	
draw_sprite_ext(spr_hotbar, 1, _x_pos, _y_pos, global.ui_scale, global.ui_scale, 0, c_white, 1);

var _item_spacing = 6;
var _item_frame_width = 18;

var _sprites = [
	spr_alchemists_fire,
	spr_bottled_light,
	spr_clarity_tincture,
];
var _amounts = [
	global.inventory_alchemists_fire_count,
	global.inventory_bottled_light_count,
	global.inventory_clarity_tincture_count,
];
for (var _i = 0; _i < array_length(_sprites); _i++)
{
	var _cur_sprite = _sprites[_i];
	var _cur_amount = _amounts[_i];
	var _colour = _cur_amount <= 0 ? #202020 : c_white;
	
	var _cur_x = _x_pos + (4 + _item_frame_width / 2 + (_i + 1) * (_item_spacing + _item_frame_width)) * global.ui_scale;
	var _cur_y = _y_pos + (4 + _item_frame_width / 2) * global.ui_scale;
	
	draw_sprite_ext(
		_cur_sprite,
		1,
		_cur_x,
		_cur_y,
		global.ui_scale * 0.75,
		global.ui_scale * 0.75,
		0,
		_colour,
		1
	);
	draw_text_with_outline(
		_cur_x + (_item_frame_width * 0.25) * global.ui_scale,
		_cur_y + (_item_frame_width * 0.25) * global.ui_scale,
		string(_cur_amount),
		3,
		c_black,
		16
	);
}