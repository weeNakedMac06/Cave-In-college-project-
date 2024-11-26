
//chase the player
if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}

//get the speeds
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)

//collision

if place_meeting(x + xspd,y,obj_wall) or place_meeting(x+ xspd,y,Obj_enemy_parent)
{xspd = 0}
if place_meeting(x ,y + yspd,obj_wall) or place_meeting(x,y+yspd,Obj_enemy_parent)
{yspd = 0}


//moving

x += xspd
y += yspd



// sprite controll
face = round(dir/90)
	if face == 4 {face = 0}
	
	//animate
	
	if xspd = 0 and yspd == 0
	{
	
	image_index = 0
		
	}
	
	
	//set the player sprite
	mask_index = sprite[3]
	sprite_index = sprite[face]



// Inherit the parent event
event_inherited();

