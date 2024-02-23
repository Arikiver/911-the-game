/// @description movement

vsp = vsp+grv;


if(keyboard_check(ord("D")))
{
	if(keyboard_check(ord("E")))
	{
		sprite_index = shine_run;
	}
	else
	{
		sprite_index = spr_run;
	}
	x += 10;
	image_xscale = 2;
}
else if(keyboard_check(ord("A")))
{
	if(keyboard_check(ord("E")))
	{
		sprite_index = shine_run;
	}
	else
	{
		sprite_index = spr_run;
	}
	x -= 10;
	image_xscale = -2;
}
else if(keyboard_check_pressed(vk_space)&& place_meeting(x,y+1,block))
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