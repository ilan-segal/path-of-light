if (!obj_pause.pause) return;

var _scale = global.ui_scale;
var _sprite_h = sprite_get_height(spr_crafting_menu);
var _sprite_w = sprite_get_width(spr_crafting_menu);
var _x_pos = view_wport[0] / 2;
var _y_pos = view_hport[0] / 2;

draw_sprite_ext(spr_crafting_menu, 1, _x_pos, _y_pos, _scale, _scale, 0, c_white, 1);

return;

var _first_ingredient_x = -56 * _scale;
var _ingredient_y = -18 * _scale;
var _ingredient_scale = 2;
var _pixels_between_ingredients = 18 * _scale;
var _amount_text_offset_x = 4 * _scale;
var _amount_text_offset_y = 3 * _scale;

var _ingredient_sprites = ds_list_create();
ds_list_add(
	_ingredient_sprites,
	spr_bone_dust,
	spr_light_flower_no_glow,
	spr_shadow_essence,
);

var _ingredient_amounts = ds_list_create();
ds_list_add(
	_ingredient_amounts,
	global.inventory_bone_dust_count,
	global.inventory_light_flower_count,
	global.inventory_shadow_essence_count,
);

for (var _i = 0; _i < 3; _i++)
{
	var _ingredient_x = _first_ingredient_x + (_i * _pixels_between_ingredients);
	
	var _ingredient_sprite = _ingredient_sprites[| _i];
	var _ingredient_amount = _ingredient_amounts[| _i];
	
	var _opacity = _ingredient_amount == 0 ? 0.25 : 1;
	
	draw_sprite_ext(
		_ingredient_sprite,
		1,
		_ingredient_x + _x_pos,
		_ingredient_y + _y_pos,
		_ingredient_scale,
		_ingredient_scale,
		0,
		c_white,
		_opacity
	);
	draw_text(
		_ingredient_x + _x_pos + _amount_text_offset_x,
		_ingredient_y + _y_pos + _amount_text_offset_y,
		_ingredient_amount
	);
}