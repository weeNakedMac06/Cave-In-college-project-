/// @description Insert description here
// You can write your code in this editor
//state macgine 

switch(state)
{
	//stay still
	case 0:
	//get player dir
	if instance_exists(obj_player)
	{
		dir = point_direction(x,y,obj_player.x,obj_player.y)
	}
	
	//set depth to make more visible
	depth = -y-70
	
						
	break
	
	
	//move
	case 1:
	//movement
	xspd = lengthdir_x(spd,dir)
	yspd = lengthdir_y(spd,dir)
	
	x+= xspd
	y+= yspd
	
	//set depth
	depth = -y
	
	break
	
	
	
	
	
	
	
}

//cleanup
	if hitConfirm= true and PlayerDestroy = true{destroy = true}

	//destroy
	if destroy = true{instance_destroy()}

	//collision
	if place_meeting(x,y,obj_wall){destroy =true}

