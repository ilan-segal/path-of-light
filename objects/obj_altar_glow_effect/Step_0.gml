image_alpha += opacity_change_per_frame;
image_xscale += image_xscale * scale_change_per_frame;
image_yscale += image_yscale * scale_change_per_frame;

if (image_alpha <= 0) instance_destroy();