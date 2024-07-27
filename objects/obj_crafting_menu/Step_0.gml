var _recipe_changed = false;

bone_dust_item.info = string(global.inventory_bone_dust_count);
bone_dust_item.is_disabled = global.inventory_bone_dust_count <= 0 || item_is_in_crafting_circle(spr_bone_dust);
if (bone_dust_item.clicked && !bone_dust_item.is_disabled)
{
	add_item_to_crafting_circle(spr_bone_dust);
	_recipe_changed = true;
}

light_flower_item.info = string(global.inventory_light_flower_count);
light_flower_item.is_disabled = global.inventory_light_flower_count <= 0 || item_is_in_crafting_circle(spr_light_flower_no_glow);
if (light_flower_item.clicked && !light_flower_item.is_disabled)
{
	add_item_to_crafting_circle(spr_light_flower_no_glow);
	_recipe_changed = true;
}

shadow_essence_item.info = string(global.inventory_shadow_essence_count);
shadow_essence_item.is_disabled = global.inventory_shadow_essence_count <= 0 || item_is_in_crafting_circle(spr_shadow_essence);
if (shadow_essence_item.clicked && !shadow_essence_item.is_disabled)
{
	add_item_to_crafting_circle(spr_shadow_essence);
	_recipe_changed = true;
}

for (var _i = 0; _i < array_length(craft_items); _i++)
{
	if (craft_items[_i] == noone)
	{
		continue;
	}
	if (craft_items[_i].clicked)
	{
		instance_destroy(craft_items[_i]);
		craft_items[_i] = noone;
		_recipe_changed = true;
	}
}

if (recipe_result_item != noone && recipe_result_item.clicked)
{
	// Consume one of each item in crafting recipe
	for (var _i = 0; _i < array_length(craft_items); _i++)
	{
		if (craft_items[_i] == noone) continue;
		
		var _depleted = false;
		
		if (craft_items[_i].sprite == spr_bone_dust)
		{
			_depleted = --global.inventory_bone_dust_count == 0;
		}
		else if (craft_items[_i].sprite == spr_light_flower_no_glow)
		{
			_depleted = --global.inventory_light_flower_count == 0;
		}
		else if (craft_items[_i].sprite == spr_shadow_essence)
		{
			_depleted = --global.inventory_shadow_essence_count == 0;
		}
		
		if (_depleted)
		{
			instance_destroy(craft_items[_i]);
			craft_items[_i] = noone;
			_recipe_changed = true;
		}
	}
	
	if (recipe_result_item.sprite == spr_alchemists_fire)
	{
		global.inventory_alchemists_fire_count++;
	}
	else if (recipe_result_item.sprite == spr_bottled_light)
	{
		global.inventory_bottled_light_count++;
	}
	else if (recipe_result_item.sprite == spr_brightflame_oil)
	{
		global.inventory_brightflame_oil_count++;
	}
	else if (recipe_result_item.sprite == spr_clarity_tincture)
	{
		global.inventory_clarity_tincture_count++;
	}
}

if (_recipe_changed)
{
	// TODO: Update middle item to show recipe result
	if (recipe_result_item != noone)
	{
		instance_destroy(recipe_result_item);
		recipe_result_item = noone;
	}
	var _has_bone_dust = item_is_in_crafting_circle(spr_bone_dust);
	var _has_light_flower = item_is_in_crafting_circle(spr_light_flower_no_glow);
	var _has_shadow_essence = item_is_in_crafting_circle(spr_shadow_essence);
	
	// Placeholder sprite. If you see this in the game, someone messed up.
	var _spr_result = spr_circle;
	var _result_name = "";
	if (_has_bone_dust && _has_light_flower && _has_shadow_essence)
	{
		_spr_result = spr_brightflame_oil;
		_result_name = "Brightflame Oil";
	}
	else if (_has_bone_dust && _has_light_flower)
	{
		_spr_result = spr_bottled_light;
		_result_name = "Bottled Light";
	}
	else if (_has_bone_dust && _has_shadow_essence)
	{
		_spr_result = spr_alchemists_fire;
		_result_name = "Alchemist's Fire";
	}
	else if (_has_light_flower && _has_shadow_essence)
	{
		_spr_result = spr_clarity_tincture;
		_result_name = "Clarity Tincture";
	}
	
	if (_result_name != "")
	{
		var _x = view_wport[0] / 2 + recipe_result_x * global.ui_scale;
		var _y = view_hport[0] / 2 + recipe_result_y * global.ui_scale;
		recipe_result_item = instance_create_layer(
			_x,
			_y,
			"Menu",
			obj_menu_item,
			{
				hover_text: _result_name,
				sprite: _spr_result,
				scale: ingredient_scale,
				circular_frame: true,
			}
		);
	}
}