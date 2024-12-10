//damage
get_damaged(Obj_player_damage, true)


#region // player input
//player input
rightKey = global.rightKey
leftKey = global.leftKey
upKey =  global.upKey
downKey = global.downKey
shootKey = global.shootKey
swapKeyUp=  global.swapKeyUp
swapKeyDown = global.swapKeyDown
dashKey= global.dashKey

#endregion
#region // movement
// player movement
	// get direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey
	moveDir = point_direction(0,0,_horizKey,_vertKey)
	
	// get x y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0,0,_horizKey,_vertKey)
	_inputLevel = clamp(_inputLevel,0,1)
	_spd = moveSpd * _inputLevel
	
	xSpd = lengthdir_x(_spd, moveDir);
	ySpd = lengthdir_y(_spd, moveDir);
	
	// collisions 
	if place_meeting(x + xSpd,y,obj_wall) or place_meeting(x + xSpd,y,obj_wall_2)
	{
		xSpd = 0
		xSpdDash = 0
	}
	
	if place_meeting(x ,y + ySpd,obj_wall) or place_meeting(x,y+ySpd,obj_wall_2)
	{
		ySpd = 0
		ySpdDash = 0
	}
	
	
	
	// move player
	
	x += xSpd
	y += ySpd
	
	
	
	// dash ability
	
	
	xSpdDash = lengthdir_x(dashSpd, aimDir);
	ySpdDash = lengthdir_y(dashSpd, aimDir);
	
	dashTimer = 0
	if dashKey
	{ 
		
	dashing = true 
	dashTimer ++	
		
	}
	

	
	if dashing = true and dashTimer <= dashTime
	{
       
	    if(place_meeting(x, y, obj_wall) or place_meeting(x, y, obj_wall)) {
        if(!place_meeting(x+xSpdDash, y, obj_wall)) {
            x+= 5
			y+= 5
        }
    }
	else {
        x += xSpdDash
		y += ySpdDash
		dashing = false
    }	   
	   
	  
    }	
		
		
	
		
		
	
	
	if dashTimer >= dashTime and dashing = false {dashTimer = 0}
	
#endregion	
#region // weapon swapping

var _PlayerWeapons = global.PlayerWeapons

	// cylce through weapons 
	if swapKeyUp or keyboard_check_pressed(ord("1"))	
	{
	
	selectedWeapon++
	
	if selectedWeapon >= array_length(_PlayerWeapons){selectedWeapon = 0}
	
	// set new weapon
	
	weapon = _PlayerWeapons[selectedWeapon]
	
	
	
	
	
	}
	
	if swapKeyDown
{
    selectedWeapon--
    
    if (selectedWeapon < 0)
    {
        selectedWeapon = array_length(_PlayerWeapons) - 1
    }
    
    // Set new weapon
    weapon = _PlayerWeapons[selectedWeapon]
}
	
	


	




#endregion
#region // shooting



if shootTimer > 0 { shootTimer--}

if shootKey && shootTimer <= 0 
{
	// shoot timer reset 
	shootTimer = weapon.cooldown
	
	
	
	
	
	//create bullet
	var _xOffset =lengthdir_x(weapon.legnth + weaponOffset, aimDir)
	var _yOffset =lengthdir_y(weapon.legnth + weaponOffset, aimDir)
	
	var _spread = weapon.spread
	var _spreadDiv = _spread/weapon.bulletNum ;
	
	
	// create the correct number of bullets 
	for(var i = 0; i < weapon.bulletNum; i++  )
	{
		var _bulletInst = instance_create_depth(x + _xOffset+ i,centerY + _yOffset-2 , depth - 150, weapon.bulletObj)
	
		//change bullet direction
	
		with (_bulletInst)
		{
		
			dir = other.aimDir - _spread/2 +_spreadDiv*i;
		
		}
	}

}
	


#endregion
#region // aim
// player aiming
	centerY = y // set in step event
	
	//aim
	aimDir = point_direction(x,centerY,mouse_x, mouse_y)

#endregion
#region // sprite controll
//sprite controll

	//make sure player facing correct direction
	
	face = round(aimDir/90)
	if face == 4 {face = 0}
	
	//animate
	
	if xSpd = 0 and ySpd == 0
	{
	
	image_index = 0
		
	}
	
	
	//set the player sprite
	mask_index = sprite[3]
	sprite_index = sprite[face]
#endregion


if hp <= 0 
{
//create die screen
instance_create_depth(0,0,-10000,obj_death_screen)

instance_destroy()

}