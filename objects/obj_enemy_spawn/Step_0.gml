	timer++

	//rest  imer when enemy llimiut been mate
	if instance_number(Obj_enemy_parent) >= global.activeEnemyMax or global.totalEnemysSpawned >= global.enemyRoomMax
	{
	timer = 0	
		
	}


	//create enemy
	if timer >= spawnTimer and !place_meeting(x,y+16,obj_zombie)
	{
		//create enemy
	
	
			var _inst = instance_create_depth(x,y+20,depth-1, obj_zombie)
	
			with(_inst)
			{
				//set alpha to 0
		
		
		
				//set state to spawn state
				obj_zombie.state = -1
		
			}
	
		//reset timer
		timer = 0
	}