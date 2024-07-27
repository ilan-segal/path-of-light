if (!instance_exists(obj_cleansing_light_primary))
{
	instance_destroy();
	return;
}

image_alpha = obj_cleansing_light_primary.image_alpha;
image_xscale = scale_ratio * obj_cleansing_light_primary.image_xscale;
image_yscale = scale_ratio * obj_cleansing_light_primary.image_yscale;

image_angle = -obj_cleansing_light_primary.image_angle + rotation_offset_degrees;