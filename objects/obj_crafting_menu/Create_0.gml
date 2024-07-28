global.ui_scale = 3;

/// @param {real} _index
/// @return {real}
/// @pure
function get_box_x(_index)
{
	return view_wport[0] / 2 + global.ui_scale * (ingredient_boxes_x + (ingredient_box_size + ingredient_box_spacing) * _index);
}

/// @param {real} _index
/// @return {real}
/// @pure
function get_box_y(_index)
{
	return view_hport[0] / 2 + global.ui_scale * (ingredient_boxes_y + (ingredient_box_size + ingredient_box_spacing) * _index);
}

/// @func add_item_to_crafting_circle(_sprite)
/// @param {Asset.GMSprite} _sprite
function add_item_to_crafting_circle(_sprite)
{
	if(item_is_in_crafting_circle(_sprite)) return;
	for (var _i = 0; _i < array_length(craft_items); _i++)
	{
		if (craft_items[_i] != noone) continue;
		craft_items[_i] = instance_create_layer(
			view_wport[0] / 2 + craft_item_xs[_i] * global.ui_scale,
			view_hport[0] / 2 + craft_item_ys[_i] * global.ui_scale,
			"Menu",
			obj_menu_item,
			{
				sprite: _sprite,
				scale: ingredient_scale,
				circular_frame: true,
			}
		)
		return;
	}
}

function item_is_in_crafting_circle(_sprite)
{
	for (var _i = 0; _i < array_length(craft_items); _i++)
	{
		if (craft_items[_i] != noone) && (craft_items[_i].sprite == _sprite)
		{
			return true;
		}
	}
	return false;
}

function is_full_on_upgrades()
{
	instance_activate_object(obj_player);
	var _result = obj_player.maximum_torch_upgrades <= obj_player.torch_upgrades_count;
	instance_deactivate_object(obj_player);
	return _result;
}

bone_dust_item = instance_create_layer(
	get_box_x(0),
	get_box_y(0),
	"Menu",
	obj_menu_item,
	{
		hover_text: "Bone Dust",
		sprite: spr_bone_dust,
		scale: ingredient_scale,
		info_offset_x: ingredient_amount_offset_x,
		info_offset_y: ingredient_amount_offset_y
	}
);

light_flower_item = instance_create_layer(
	get_box_x(1),
	get_box_y(0),
	"Menu",
	obj_menu_item,
	{
		hover_text: "Light Flower",
		sprite: spr_light_flower_no_glow,
		scale: ingredient_scale,
		info_offset_x: ingredient_amount_offset_x,
		info_offset_y: ingredient_amount_offset_y
	}
);

shadow_essence_item = instance_create_layer(
	get_box_x(2),
	get_box_y(0),
	"Menu",
	obj_menu_item,
	{
		hover_text: "Shadow Essence",
		sprite: spr_shadow_essence,
		scale: ingredient_scale,
		info_offset_x: ingredient_amount_offset_x,
		info_offset_y: ingredient_amount_offset_y
	}
);