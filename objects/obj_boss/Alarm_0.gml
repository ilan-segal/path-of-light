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
	alarm[0] = 300;
	break;
	
	case 1:
	show_debug_message("Summoning Dudes");
	alarm[0] = 240;
	break;
	
	case 2:
	vanish();
	break;
	
	default:
	break;
}
_selected_action = _selection;