
switch(state)
{
	
	case 0: 
	
	// get player spd
	if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}
	
	// speed
	spd = chaseSpd
	
	var _camLeft = camera_get_view_x(view_camera[0])
	var _camRight= _camLeft + camera_get_view_width(view_camera[0])
	var _camTop = camera_get_view_y(view_camera[0])
	var _camBottom = _camTop +  camera_get_view_height(view_camera[0])
	
	
	//shoot state 
	// only add to timer if on screen
	if bbox_right > _camLeft and bbox_left < _camRight and bbox_bottom > _camTop and bbox_top < _camBottom
	
	
	{shootTimer++} 
	
	if shootTimer >= coolDownTime
	{
	
	state = 1
	
	shootTimer = 0
	
	}
	
	break
	
	case 1:
	// pause and 
	if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}
	
	spd = 0 
	
	image_index = 0
	
	shootTimer ++
	
	if shootTimer =1 and instance_exists(obj_player)
	{
	//create bullet
	bulletInst = instance_create_depth(x + 8* face,y,depth,obj_enemy_bullet)
	}
	
	
	if shootTimer < windUpTime and instance_exists(bulletInst)
	{
		
		bulletInst.x = x + 8* face
		bulletInst.y = y
		
	}
	
	//shootstate
	
	if shootTimer > coolDownTime
	{
		state = 0
		
		shootTimer = 0
	}
	
	
	
	
	
	//shoot
	if shootTimer == windUpTime and instance_exists(obj_enemy_bullet)
	{
		bulletInst.state = 1
	}
	
	
	
	break 
	
	
	
	
	
	
	
	
	
}






//chase the player


//get the speeds
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)


// get correct face
if dir > 90 and dir < 270 {face = -1}
else{face = 1}
image_xscale = face

//collision

if place_meeting(x + xspd,y,obj_wall) or place_meeting(x+ xspd,y,Obj_enemy_parent) or place_meeting(x + xspd,y,obj_wall_2)
{xspd = 0}
if place_meeting(x ,y + yspd,obj_wall) or place_meeting(x,y+yspd,Obj_enemy_parent) or place_meeting(x,y+yspd,obj_wall_2)
{yspd = 0}


//moving

x += xspd
y += yspd

//depth

depth = -y



// sprite controll

	
	
	

	
	
	//set the player sprite
	



// Inherit the parent event
event_inherited();

