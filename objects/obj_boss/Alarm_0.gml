/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C0522ED
/// @DnDArgument : "code" "var _selection;$(13_10)var _max_range = 1;$(13_10)$(13_10)_previous_action = _selected_action;$(13_10)$(13_10)if(in_phase_2)$(13_10){$(13_10)	_max_range = 2;$(13_10)}$(13_10)$(13_10)do $(13_10){$(13_10)	_selection = irandom(_max_range);$(13_10)}$(13_10)until (_selection != _previous_action);$(13_10)$(13_10)switch (_selection)$(13_10){$(13_10)	case 0:$(13_10)	show_debug_message("Summoning Shadow");$(13_10)	alarm[0] = 300 * cooldown_mod;$(13_10)	break;$(13_10)	$(13_10)	case 1:$(13_10)	show_debug_message("Summoning Dudes");$(13_10)	alarm[0] = 240 * cooldown_mod;$(13_10)	break;$(13_10)	$(13_10)	case 2:$(13_10)	vanish();$(13_10)	break;$(13_10)	$(13_10)	default:$(13_10)	break;$(13_10)}$(13_10)_selected_action = _selection;"
var _selection;
var _max_range = 1;

_previous_action = _selected_action;

if(in_phase_2)
{
	_max_range = 2;
}

do 
{
	_selection = irandom(_max_range);
}
until (_selection != _previous_action);

switch (_selection)
{
	case 0:
	show_debug_message("Summoning Shadow");
	alarm[0] = 300 * cooldown_mod;
	break;
	
	case 1:
	show_debug_message("Summoning Dudes");
	alarm[0] = 240 * cooldown_mod;
	break;
	
	case 2:
	vanish();
	break;
	
	default:
	break;
}
_selected_action = _selection;