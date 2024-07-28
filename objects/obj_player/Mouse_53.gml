switch (obj_hotbar.selection_index)
{
	// No case for torch, that's handled in 'Global Left Down'
	case 1:
		throw_alchemists_fire();
		break;
	case 2:
		throw_bottled_light();
		break;
	case 3:
		consume_clarity_tincture();
		break;
}