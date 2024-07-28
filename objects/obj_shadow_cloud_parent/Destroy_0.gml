effect_create_above(4, x, y + 0, 2, $FF000000 & $ffffff);

var _spawn_chance = floor(random_range(1, 100 + 1));

if(_spawn_chance <= 15)
{
	var _enemy = instance_create_layer(x + 0, y + 0, "Instances", obj_enemy);
	_enemy.image_xscale = 2.667;
	_enemy.image_yscale = 2.667;
}