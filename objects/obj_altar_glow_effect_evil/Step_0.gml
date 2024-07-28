lifetime--;

var _t = lifetime / 60;

image_alpha = lerp(1, 0, _t);
image_xscale = lerp(final_scale, largest_scale, _t);
image_yscale = lerp(final_scale, largest_scale, _t);

if (lifetime <= 0) instance_destroy();