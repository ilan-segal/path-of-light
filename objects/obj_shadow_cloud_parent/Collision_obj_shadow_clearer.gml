effect_create_above(4, x, y + 0, 2, $FF000000 & $ffffff);

var spawnChance = floor(random_range(1, 100 + 1));

if(spawnChance <= 15)
{
	obj_Enemy1 = instance_create_layer(x + 0, y + 0, "Instances", obj_enemy1);
	
	with(obj_Enemy1) {
	image_xscale = 2.667;
	image_yscale = 2.667;
	}
}

instance_destroy();