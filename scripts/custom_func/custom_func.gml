// drawing player weapom

function draw_my_weapon()
{
	
		// get weapom off player
	var _xOffset = lengthdir_x(weaponOffset,aimDir )
	var _yOffset = lengthdir_y(weaponOffset,aimDir )
	
	
	
	
	// flip weapon
	var _weaponYscale = 1 

	if aimDir > 90 and aimDir < 270{_weaponYscale = -1}


draw_sprite_ext(weapon.sprite,0,x + _xOffset,centerY + _yOffset+ 10,1,_weaponYscale,aimDir,c_white,1)
	
	
	
}