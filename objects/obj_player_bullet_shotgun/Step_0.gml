#region/// move bullet
	xSpd = lengthdir_x(spd, dir)
	ySpd = lengthdir_y(spd, dir)

	x += xSpd
	y += ySpd

#endregion
#region//cleanup
	
	// destroy
	
	if destroy == true{instance_destroy();}
	
	//collision with objects
		
	if place_meeting(x,y,obj_wall){destroy = true}

	// bullet out of range
	
	if point_distance(xstart, ystart,x,y) > maxDist{destroy = true}

	
#endregion
