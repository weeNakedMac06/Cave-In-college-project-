/// @description Insert description here
// You can write your code in this editor
// state

switch(state)
{
	case 0:
	// get player dir
	if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}
	
	// set depth to make more visible
	
	depth = -y - 50
	
	
	break
	
	case 1:
				
	//get speeds
	if instance_exists(obj_player)
	{
		xspd = lengthdir_x(spd,dir)
		yspd = lengthdir_y(spd,dir)
	}
	x += xspd
	y += yspd
	
	depth = -y
	break
	
	
}

//cleanup
	if hitConfirm = true and playerDestroy = true{ destroy = true}

	if destroy = true { instance_destroy()}

	if place_meeting(x,y,obj_wall){destroy = true}
	
//out of bounds
	var _pad = 16
	
	if bbox_right< 0 - _pad or bbox_left > room_width + _pad or bbox_bottom < 0 - _pad or bbox_top>room_height + _pad
	{
		destroy = true					
	}