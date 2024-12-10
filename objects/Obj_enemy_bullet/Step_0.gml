//state machine
switch( state )
{
	
	//wait to shoot
	case 0: 
	
		//aim to player
		if instance_exists(obj_player)
		{
		dir = point_direction(x,y,obj_player.x,obj_player.y)
		}
		//set depth
		depth = -y -50
		
		
		
		Obj_enemy_bullet.sprite_index = Spr_enemy_bullet_moving_1
						
	
	break
	
	//shoot
	case 1:
		//set sprite
		Obj_enemy_bullet.sprite_index = Spr_enemy_bullet_moving	
		
		//set dir
			dir = point_direction(x,y,obj_player.x,obj_player.y)
			direction = dir
			image_angle = dir
		
		//get speeds
			xspd = lengthdir_x(spd,dir)
			yspd = lengthdir_y(spd,dir)
		//move
			x += xspd
			y += yspd
				
		//set depth
			depth = -y
	
		
			
					
	break
	
}


//clean up
	
	//out of bounds
	var _pad = 16
	if bbox_right<-_pad or bbox_left> room_width + _pad or bbox_bottom < -_pad  or bbox_top> room_height + _pad
	{
		destroy = true
		
	}
	
	
	if destroy == true {instance_destroy();}
	
	//collision
	if place_meeting(x,y,obj_wall){destroy = true}
	if place_meeting(x,y,obj_wall_2){destroy = false}
	
	
	if playerDestroy = true and place_meeting(x,y,obj_player){destroy = true}
	//destroy bullet if out of time
	if instance_exists(Obj_enemy_bullet)
	{
		timer++
	}

	if timer >= maxTime {destroy = true}