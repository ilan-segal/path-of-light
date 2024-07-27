if (!obj_pause.pause) return;

var _scale = 3;
var _sprite_h = sprite_get_height(spr_crafting_menu);
var _sprite_w = sprite_get_width(spr_crafting_menu);
var _x_pos = view_wport[0] / 2;
var _y_pos = view_hport[0] / 2;

draw_sprite_ext(spr_crafting_menu, 1, _x_pos, _y_pos, _scale, _scale, 0, c_white, 1);

var _first_ingredient_x = -56 * _scale;
var _ingredient_y = -18 * _scale;
var _ingredient_scale = 2;
var _pixels_between_ingredients = 18 * _scale;
var _amount_text_offset_x = 4 * _scale;
var _amount_text_offset_y = 3 * _scale;

for (var _i = 0; _i < 3; _i++)
{
	var _ingredient_x = _first_ingredient_x + (_i * _pixels_between_ingredients);
	
	// Placeholder sprite before it gets selected in the switch cases
	// If you see this in the actual game, you messed something up
	var _ingredient_sprite = spr_light_flower;
	var _ingredient_amount = -1;
	
	switch (_i)
	{
		case 0:
			_ingredient_sprite = spr_bone_dust;
			_ingredient_amount = global.inventory_bone_dust_count;
			break;
		case 1:
			_ingredient_sprite = spr_light_flower_no_glow;
			_ingredient_amount = global.inventory_light_flower_count;
			break;
		case 2:
			_ingredient_sprite = spr_shadow_essence;
			_ingredient_amount = global.inventory_shadow_essence_count;
			break;
	}
	
	draw_sprite_ext(
		_ingredient_sprite,
		1,
		_ingredient_x + _x_pos,
		_ingredient_y + _y_pos,
		_ingredient_scale,
		_ingredient_scale,
		0,
		c_white,
		1
	);
	draw_text(
		_ingredient_x + _x_pos + _amount_text_offset_x,
		_ingredient_y + _y_pos + _amount_text_offset_y,
		_ingredient_amount
	);
}