 /// @description Insert description here
// You can write your code in this editor

vsp = vsp+grv;


if(keyboard_check(ord("D")))
{
	x += 10;
	sprite_index = spr_run;
	image_xscale = 2;
}
else if(keyboard_check(ord("A")))
{
	x -= 10;
	sprite_index = spr_run;
	image_xscale = -2;
}
else if(keyboard_check(vk_space)&& place_meeting(x,y+1,block))
{
	vsp -= 20;
}
else
{
	sprite_index = spr_idle;
}

if(place_meeting(x,y+vsp,block))
{
	while(!place_meeting(x,y+sign(vsp),block))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y = y+vsp;