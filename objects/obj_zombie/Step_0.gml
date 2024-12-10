if dir>90 and dir<270
{
	
face = -1	
	
}else
{

face=1	
	
}

image_xscale = face
if face = -1{ xoffset = 1}
	
	
	
	
	

	
	

	
//state
switch(state)
{
	case 0:
	//chase player
		//player dir
		if instance_exists(obj_player)
		{
			dir = point_direction(x,y,obj_player.x,obj_player.y)
		}
	
		
	//get speeds
	spd = chaseSpeed
	
	
	shootTimer++
	
	if shootTimer > cooldown
	{
		
		state = 1
		shootTimer =0
		
	}
	
	
	break
	
	case 1:
	//pause and shoot	
		//player dir
		if instance_exists(obj_player)
		{
			dir = point_direction(x,y,obj_player.x,obj_player.y)
		}
				
		// set correct speed
		spd = 0
		
		//stop animation
		image_index=0
		
		//shooting
			shootTimer++
			
			
			if shootTimer == 1
			{				
				bulletInst= instance_create_depth(x+xoffset,y-yoffset,depth, Obj_enemy_bullet)
				Obj_enemy_bullet.image_angle = point_direction(x,y,obj_player.x,obj_player.y)
				Obj_enemy_bullet.direction = point_direction(x,y,obj_player.x,obj_player.y)
				
				

				
				
			}
			
			//shoot the bullet after windup
			
			if shootTimer == windUpTime and instance_exists(Obj_enemy_bullet)
			{
										
				Obj_enemy_bullet.state = 1
				
			}
		
			
			if shootTimer> windUpTime + recoverTime
			{
				
				state = 0
				shootTimer = 0
				
			}
	
			break
	
	
}





//chase the player


//get the speeds
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)


// get correct face

//collision

if place_meeting(x + xspd,y,obj_wall) or place_meeting(x+ xspd,y,Obj_enemy_parent) or place_meeting(x + xspd,y,obj_wall_2)
{xspd = 0}
if place_meeting(x ,y + yspd,obj_wall) or place_meeting(x,y+yspd,Obj_enemy_parent) or place_meeting(x,y+yspd,obj_wall_2)
{yspd = 0}


//moving

x += xspd
y += yspd

//set depth
depth = -y


	

// Inherit the parent event
event_inherited();

