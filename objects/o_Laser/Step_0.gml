/// @description Insert description here
// You can write your code in this editor

x = o_gosh.x;
y = o_gosh.y;


direction = point_direction(o_gosh.x,o_gosh.y, mouse_x,mouse_y);
a=false;
var max_length = 2000;
if(keyboard_check(ord("E"))){
	a=true;
for(i=0;i<max_length;i++){

    xEnd = x+ lengthdir_x(i,direction);
    yEnd = y+ lengthdir_y(i,direction);
    
    length_laser = i;
    
    var inst;
	var inst2;
    inst = instance_place(xEnd,yEnd,o_enemy);
	inst2 = instance_place(xEnd,yEnd,mirror);
    
    if(inst != noone)
    {
		inst.hp -=1;
		with(inst)
		{    
			if(inst.hp == 0)
			{
               instance_destroy();
			   score ++;
			}
		}
		break;
    }
	else if (inst2 != noone)
	{
		o_gosh.hp -=0.1;
		break;
	
	}

}
}









