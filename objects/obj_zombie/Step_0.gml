image_xscale = face
var _wallCollisions = true
var _getDamaged = true

//state machines 
	//chase
switch(state)	
{	
	
	#region//spawn in state
	case -1:
		
		//fade in
		if image_alpha <1
		{
			image_alpha += fadeSpd
			//set speed manually
			spd = 0
		}
		
		
		//turn off collisions and damage
		_wallCollisions = false
		_getDamaged = false
		
		//walk out
		
		if image_alpha>= 1
		{
		//get player direction and set right speed	
			spd = spawnSpeed
			
			dir = point_direction(x,y,obj_player.x, obj_player.y)
			
		}
		
		
		//go to chase state
		if !place_meeting(x,y,obj_wall) or !place_meeting(x,y,obj_zombie)
		{
			state = 0
		}
		
		
	
	
	break
	#endregion
	
	
	#region //chase state
	case 0:
	//get player dir
	if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}
	
	// set speed to chase speed
	spd = chaseSpd
	
	//switch to shoot state
		//get camera boundaries so enemys cant shoot off screen
		var _camLeft = camera_get_view_x(view_camera[0])
		var _camRight = camera_get_view_width(view_camera[0])
		var _camTop = camera_get_view_y(view_camera[0])
		var _camBottom = camera_get_view_width(view_camera[0])
		
		
		
		//only add to timer if on screen
		if bbox_right > _camLeft and bbox_left <_camRight and bbox_bottom > _camTop and bbox_top <_camBottom
			{
			//begin timer
			shootTimer++
			}
	
	
	if shootTimer > coolDownTime
	{
		//go to shoot state
		state = 1
		
		//reset timer
		shootTimer = 0
	}
	
	
	
	break
	#endregion

	#region //pause shoot state
	case 1:
	
	//get direction
	if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}
	
	//set speed
	spd = 0
	
	//stop animating
	image_index = 0
	
	//shoot bullet
	shootTimer++
	
	//create bullet
	if shootTimer ==1
	{
		bulletInst = instance_create_depth(x+bulletXoff* face,y,depth,Obj_enemy_bullet)
		
	}
	
	//keep bullet in enemy hands
	if shootTimer <=windUpTime and instance_exists(bulletInst)
	{
		bulletInst.x = x + bulletXoff* face
		bulletInst.y = y 
				
	}
			
	//shoot bullet after windup time
	if shootTimer == windUpTime and instance_exists(bulletInst)
	{
		//set the bullets state to move state
		bulletInst.state =1
		
	}
	
	//reset state after recover
	if shootTimer > windUpTime + recoverTime
	{
		//go back to chasing player
		state = 0
		
		// reset timer
		shootTimer = 0
	}
	
	break
	#endregion




}



//get the speeds
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)


// get correct face

if dir > 90 and dir < 270{face = -1}else{face = 1}



//collision with walls


if _wallCollisions = true
{
	if place_meeting(x + xspd,y,obj_wall)  or place_meeting(x + xspd,y,obj_wall_2)
	{xspd = 0}
	if place_meeting(x ,y + yspd,obj_wall) or place_meeting(x,y+yspd,obj_wall_2)
	{yspd = 0}
}


//collisions with enemies
if place_meeting(x + xspd,y,Obj_enemy_parent)
{xspd = 0}
if place_meeting(x ,y + yspd,Obj_enemy_parent)
{yspd = 0}


//moving

x += xspd
y += yspd

//set depth
depth = -y

// sprite controll

	
	
	

	
	
	//set the player sprite
	



// Inherit the parent event if damage is true
if _getDamaged == true{event_inherited();}

