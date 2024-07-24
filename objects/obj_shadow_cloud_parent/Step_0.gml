/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 37ADF3EE
/// @DnDArgument : "var" "_roll"
/// @DnDArgument : "var_temp" "1"
var _roll = (random_range(0, 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CF92484
/// @DnDArgument : "var" "_roll"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "size_wiggle_chance_per_frame"
if(_roll <= size_wiggle_chance_per_frame)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3542BB8D
	/// @DnDParent : 3CF92484
	/// @DnDArgument : "var" "_new_scale"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "min_scale"
	/// @DnDArgument : "max" "max_scale"
	var _new_scale = (random_range(min_scale, max_scale));

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5C07F648
	/// @DnDParent : 3CF92484
	/// @DnDArgument : "xscale" "_new_scale"
	/// @DnDArgument : "yscale" "_new_scale"
	image_xscale = _new_scale;
	image_yscale = _new_scale;
}