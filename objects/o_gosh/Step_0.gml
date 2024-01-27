 /// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_right))
{
	x += 10;
	sprite_index = spr_run;
	image_xscale = 2;
}
else if(keyboard_check(vk_left))
{
	x -= 10;
	sprite_index = spr_run;
	image_xscale = -2;
}
else
{
	sprite_index = spr_idle;
}