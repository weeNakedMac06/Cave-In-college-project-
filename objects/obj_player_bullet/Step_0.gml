#region/// move bullet
	xSpd = lengthdir_x(spd, dir)
	ySpd = lengthdir_y(spd, dir)

	x += xSpd
	y += ySpd

#endregion



#region//cleanup
	//hit confrim destroy
	if hitConfirm =	true and enemyDestroy = true{destroy = true}
	
	// destroy
	
	if destroy == true{instance_destroy();}
	
	//collision with objects
		
	if place_meeting(x,y,obj_wall){destroy = true}
	if place_meeting(x,y,obj_wall_2){destroy = false}

	// bullet out of range
	
	if point_distance(xstart, ystart,x,y) > maxDist{destroy = true}

	
#endregion

randomNo = irandom(35)

if randomNo = 5
{
	damage = damage *2
}