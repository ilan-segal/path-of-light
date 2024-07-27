/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2274658E
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79842B18
/// @DnDArgument : "var" "obj_altar.is_activated"
/// @DnDArgument : "value" "tru"
if(obj_altar.is_activated == true)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 6F16CB94
	/// @DnDParent : 79842B18
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "4"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF000000"
	effect_create_above(4, x + 0, y + 0, 2, $FF000000 & $ffffff);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2DDF9D22
	/// @DnDParent : 79842B18
	/// @DnDArgument : "var" "spawnChance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "100"
	var spawnChance = floor(random_range(1, 100 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D5717E6
	/// @DnDParent : 79842B18
	/// @DnDArgument : "var" "spawnChance"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "15"
	if(spawnChance <= 15)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 26E4A0D6
		/// @DnDParent : 3D5717E6
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_Enemy1"
		instance_create_layer(x + 0, y + 0, "Instances", obj_Enemy1);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2A52EDC2
		/// @DnDApplyTo : obj_Enemy1
		/// @DnDParent : 3D5717E6
		/// @DnDArgument : "xscale" "2.667"
		/// @DnDArgument : "yscale" "2.667"
		with(obj_Enemy1) {
		image_xscale = 2.667;
		image_yscale = 2.667;
		}
	}
}