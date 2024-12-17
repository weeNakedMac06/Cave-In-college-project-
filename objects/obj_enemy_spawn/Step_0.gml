timer++

//create enemy
if timer >= spawnTimer and !place_meeting(x,y+16,obj_zombie)
{
	//create enemy
	var _inst = instance_create_depth(x,y-5,depth-1, obj_zombie)
	
	with(_inst)
	{
		//set alpha to 0
		image_alpha = 0
		
		
		//set state to spawn state
		state = -1
		
	}
	//reset timer
	timer = 0
}