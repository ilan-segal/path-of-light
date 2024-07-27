/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 14652EC6
/// @DnDArgument : "expr" "irandom(29) == 0"
if(irandom(29) == 0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 78DA2E1B
	/// @DnDParent : 14652EC6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "8"
	/// @DnDArgument : "color" "$FF9CF9FF"
	effect_create_below(8, x + 0, y + 0, 0, $FF9CF9FF & $ffffff);
}