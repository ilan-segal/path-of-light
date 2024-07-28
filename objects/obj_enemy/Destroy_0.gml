effect_create_above(4, x + 0, y + 0, 1, $FF000000 & $ffffff);

if (random_range(0, 1) <= item_drop_chance)
{
	instance_create_layer(x, y, "Instances", obj_shadow_essence);
}