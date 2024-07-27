global.ui_scale = 3;

/// @param {real} _index
/// @return {real}
/// @pure
function get_box_x(_index)
{
	return (view_wport[0] / 2) + global.ui_scale * (ingredient_boxes_x + (ingredient_box_size + ingredient_box_spacing) * _index);
}

/// @param {real} _index
/// @return {real}
/// @pure
function get_box_y(_index)
{
	return (view_hport[0] / 2) + global.ui_scale * (ingredient_boxes_y + (ingredient_box_size + ingredient_box_spacing) * _index);
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