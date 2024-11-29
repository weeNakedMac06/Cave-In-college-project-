
//chase the player
if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}

//get the speeds
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)


// get correct face
if xspd > 0 {face = 1}
if yspd < 0 {face = -1}
image_xscale = face

//collision

if place_meeting(x + xspd,y,obj_wall) or place_meeting(x+ xspd,y,Obj_enemy_parent)
{xspd = 0}
if place_meeting(x ,y + yspd,obj_wall) or place_meeting(x,y+yspd,Obj_enemy_parent)
{yspd = 0}


//moving

x += xspd
y += yspd



// sprite controll

	
	
	

	
	
	//set the player sprite
	



// Inherit the parent event
event_inherited();

